<?php

require_once ('config.php');

class Exam {

    // put here the names of fields
    private $id = NULL;
    private $comment = NULL;
    private $date = NULL;
    private $service = NULL;
    private $idMember = NULL;
    private $idDoctor = NULL;

    public function __construct($idExam = NULL) {
        if ($idExam != NULL) {

            $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

            $answer = $bdd->query('SELECT * FROM exams WHERE id =' . $idExam);

            $data = $answer->fetch();

            $this->setID($data['id']);
            $this->setComment($data['comment']);
            $this->setDate($data['date']);
            $this->setService($data['service']);
            $this->setIDMember($data['idMember']);
            $this->setIDDoctor($data['idDoctor']);

            $answer->closeCursor();
        }
    }

    /*
      Save the update into the database, if the id property is null, create a new Exam
      If not, just update it
     */

    public function save($comment, $service, $idMember, $idDoctor) {
        // INSERT, UPDATE
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        if ($this->getID() == NULL) {
            $req = $bdd->prepare('INSERT INTO exams(comment, date, service, idMember, idDoctor)
                              VALUES(:comment, :date, :service, :idMember, :idDoctor)');

            $req->execute(array(
                'comment' => $comment,
                'date' => date("Y-m-d"),
                'service' => $service,
                'idMember' => $idMember,
                'idDoctor' => $idDoctor
            ));
        } else {
            $req = $bdd->prepare('UPDATE exams SET comment=:comment, date=:date, service=:service, idMember=:idMember, idDoctor=:idDoctor WHERE id=:id');

            $req->execute(array(
                'id' => $this->getID(),
                'comment' => $comment,
                'date' => date("Y-m-d"),
                'service' => $service,
                'idMember' => $idMember,
                'idDoctor' => $idDoctor
            ));
        }
    }

    public function getID() {
        return $this->id;
    }

    public function getComment() {
        return $this->comment;
    }

    public function getDate() {
        return $this->date;
    }

    public function getService() {
        return $this->service;
    }

    public function getIDMember() {
        return $this->idMember;
    }

    public function getDoctor() {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $answer = $bdd->query('SELECT firstname, lastname FROM members WHERE id =' . $this->getIDDoctor());

        $data = $answer->fetch();
        
        return $data['firstname'] . " " . $data['lastname'];
    }

    public function getIDDoctor() {
        return $this->idDoctor;
    }

    public function setID($a = NULL) {
        $this->idExam = $a;
    }

    public function setComment($a = NULL) {
        $this->comment = $a;
    }

    public function setDate($a = NULL) {
        $this->date = $a;
    }

    public function setService($a = NULL) {
        $this->service = $a;
    }

    public function setIDMember($a = NULL) {
        $this->idMember = $a;
    }

    public function setIDDoctor($a = NULL) {
        $this->idDoctor = $a;
    }

}

?>
