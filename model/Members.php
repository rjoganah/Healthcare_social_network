<?php

require_once ('config.php');
require_once dirname(__FILE__) . '/../model/Member.php';
require_once dirname(__FILE__) . '/../model/Exam.php';
require_once dirname(__FILE__) . '/../model/Comment.php';

class Members {

    /*
     * If username and password is in database, return TRUE. Otherwise, return false
     */

    public static function signIn($email, $password) {
        // SELECT
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $answer = $bdd->query('SELECT * FROM members M where EXISTS(SELECT * FROM members where M.id=id and email=\'' . $email . '\' and password=\'' . $password . '\')');

        $data = $answer->fetch();

        $answer->closeCursor();

        if ($data == TRUE)
            return true;
        else
            return false;
    }

    /*
     * Return an array of all members stored in database. If $number is different from 0, 
     * limit the size of the array.
     * If $number = -1 return member order alphabetically
     */

    public static function getAll($number = 0) {
        // SELECT
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        if ($number < 0)
            $answer = $bdd->query('SELECT * FROM members ORDER BY lastname ASC');
        else if ($number > 0)
            $answer = $bdd->query('SELECT * FROM members LIMIT ' . $number);
        else
            $answer = $bdd->query('SELECT * FROM members');

        $result = array();

        while ($data = $answer->fetch()) {
            $new = new Member($data['email']);
            $result[] = $new;
        }

        $answer->closeCursor();

        return $result;
    }

    /*
      Delete the given member, if $idMember is not empty
     */

    public static function deleteMember($idMember) {
        // DELETE
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->prepare('DELETE FROM members WHERE id =' . $idMember);
        $req->execute();
    }

    public static function deleteProfile($idDoctor, $idMember) {
        // DELETE
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req1 = $bdd->prepare('DELETE FROM associatedPatientDoctor WHERE idMember=' . $idMember . ' AND idDoctor=' . $idDoctor);
        $req1->execute();
        
        $req2 = $bdd->prepare('DELETE FROM exams WHERE idMember=' . $idMember . ' AND idDoctor=' . $idDoctor);
        $req2->execute();
        
        $req1 = $bdd->prepare('DELETE FROM friends WHERE idMember1=' . $idMember . ' OR idMember2=' . $idMember);
        $req1->execute();
        
        $req1 = $bdd->prepare('DELETE FROM comments WHERE idReceiver=' . $idMember . ' OR idSender=' . $idMember);
        $req1->execute();
    }

    public static function getRSS($idMember) {
        // connect to DB
        // get the last entries in an array

        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $answer = $bdd->query('SELECT * FROM exams where idMember=' . $idMember);

        $result = array();

        while ($data = $answer->fetch()) {
            $exam = new Exam($data['id']);
            $result[] = $exam;
        }
        
        //var_dump($result);

        $answer->closeCursor();

        return $result;
    }

    public static function getMyPatients($idDoctor) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $answer = $bdd->query('SELECT M.id, M.lastname, M.firstname, M.ssn, M.email FROM members M, associatedPatientDoctor A where A.idDoctor=' . $idDoctor . ' AND A.idMember=M.id');

        $result = array();

        while ($data = $answer->fetch()) {
            $result[] = new Member($data['email']);
        }

        $answer->closeCursor();

        return $result;
    }

    public static function checkSSNAlreadyExist($ssn) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->query('SELECT ssn FROM members WHERE ssn=' . $ssn);

        $data = $req->fetch();

        $req->closeCursor();

        if ($data['ssn'] != NULL) {
            return true;
        } else {
            return false;
        }
    }

    public static function getAssociatedPatient($idMember) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->query('select email from members M where M.id<>' . $idMember . ' AND M.id not in (select A.idMember from associatedPatientDoctor A where A.idDoctor=' . $idMember . ')');

        $tab = array();
        while ($data = $req->fetch()) {
            $member = new Member($data['email']);
            $tab[] = $member;
        }

        return $tab;
    }

    public static function associatePatientDoctor($idMember, $idDoctor) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->prepare('INSERT INTO associatedPatientDoctor(idMember, idDoctor) VALUES(:idMember, :idDoctor)');

        $req->execute(array(
            ':idMember' => $idMember,
            ':idDoctor' => $idDoctor
        ));
    }

    public static function associateFriend($idNewFriend, $me) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->prepare('INSERT INTO friends(idMember1, idMember2) VALUES(:idMember1, :idMember2)');

        $req->execute(array(
            ':idMember1' => $idNewFriend,
            ':idMember2' => $me
        ));
    }

    public static function getMyFriends($idMember) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->query('SELECT * FROM friends WHERE idMember1=' . $idMember . ' OR idMember2=' . $idMember);

        $idFriends = array();

        while ($data = $req->fetch()) {
            if ($data['idMember1'] != $idMember) {
                $idFriends[] = $data['idMember1'];
            } else {
                $idFriends[] = $data['idMember2'];
            }
        }

        $req->closeCursor();

        $myFriends = array();

        for ($i = 0; $i < count($idFriends); $i++) {
            $req2 = $bdd->query('SELECT email FROM members WHERE id=' . $idFriends[$i]);

            $data = $req2->fetch();

            $newM = new Member($data['email']);

            $myFriends[] = $newM;

            $req2->closeCursor();
        }

        return $myFriends;
    }

    public static function getMembersNotFriend($idMember) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->query('select * from members M where M.id<>' . $idMember .
                ' AND M.id not in (select idMember2 from friends where idMember1=' . $idMember .
                ') AND M.id not in (select idMember1 from friends where idMember2=' . $idMember . ') ORDER BY lastname ASC');

        $tab = array();
        while ($data = $req->fetch()) {
            $member = new Member($data['email']);
            $tab[] = $member;
        }

        return $tab;
    }

    public static function getAllComment($idMember) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $req = $bdd->query('select * from comments where idReceiver=' . $idMember . ' ORDER BY date DESC');

        $idSender = array();

        $comments = array();
        while ($data = $req->fetch()) {
            $comment = new Comment($data['id']);
            $comments[] = $comment;

            $idSender[] = $data['idSender'];
        }
        
        $senders = array();

        for ($i = 0; $i < count($idSender); $i++) {
            $req2 = $bdd->query('select firstname, lastname from members where id=' . $idSender[$i]);
            
            $data = $req2->fetch();
            
            $senders[$i] = $data['firstname'] . ' ' . $data['lastname'];
        }
        
        $result = array();
        $result['comments'] = $comments;
        $result['names'] = $senders;
 
        return $result;
    }

}

?>