<?php

require_once ('config.php');

class Member {

    private $id = NULL;
    private $isAdmin = 0;
    private $ssn;
    private $firstname;
    private $lastname;
    private $birthdate;
    private $password;
    private $email;
    private $sex;
    private $phone;
    private $photo = NULL;

    public function __construct($email = NULL, $id = NULL) {
        if ($email != NULL) {

            $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

            $answer = $bdd->query('SELECT * FROM members WHERE email =\'' . $email . '\'');

            $data = $answer->fetch();

            $this->setID($data['id']);
            $this->setSSN($data['ssn']);
            $this->setFirstname($data['firstname']);
            $this->setLastname($data['lastname']);
            $this->setPhone($data['phone']);
            $this->setEmail($data['email']);
            $this->setPassword($data['password']);
            $this->setSex($data['sex']);
            $this->setPhoto($data['photo']);
            $this->setAdmin($data['isAdmin']);
            $this->setBirthdate($data['birthdate']);

            $answer->closeCursor();
        } else if($id != NULL) {
            $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

            $answer = $bdd->query('SELECT * FROM members WHERE id ='. $id);

            $data = $answer->fetch();

            $this->setID($data['id']);
            $this->setSSN($data['ssn']);
            $this->setFirstname($data['firstname']);
            $this->setLastname($data['lastname']);
            $this->setPhone($data['phone']);
            $this->setEmail($data['email']);
            $this->setPassword($data['password']);
            $this->setSex($data['sex']);
            $this->setPhoto($data['photo']);
            $this->setAdmin($data['isAdmin']);
            $this->setBirthdate($data['birthdate']);

            $answer->closeCursor();
        }
    }
    
    public function saveCoordonnate($ssn, $phone, $email, $photo) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);
        
        $req = $bdd->prepare('UPDATE members SET ssn=:ssn, phone=:phone, email=:email, photo=:photo WHERE id=:id');

            $req->execute(array(
                ':id' => $this->getID(),
                ':ssn' => $ssn,
                ':phone' => $phone,
                ':email' => $email,
                ':photo' => $photo
            ));
    }
    
    public function savePassword($pass) {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);
        
        $req = $bdd->prepare('UPDATE members SET password=:password WHERE id=:id');

            $req->execute(array(
                ':id' => $this->getID(),
                ':password' => $pass
            ));
    }

    /*
      Save the member into the database. If the id property is null, create a new member
      If not, just update it
     */
    
    public function save($ssn, $firstname, $lastname, $day, $month, $year, $email, $pass, $sex, $photo, $admin, $phone) {
        //UPDATE & INSERT

        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);
        
            if ($this->getID() == NULL) {
                
                $req = $bdd->prepare('INSERT INTO members(ssn, firstname, lastname, birthdate, email, password, sex, photo, isAdmin, phone)
                                  VALUES(:ssn, :firstname, :lastname, :birthdate, :email, :password, :sex, :photo, :isAdmin, :phone)');

                $req->execute(array(
                    ':ssn' => $ssn,
                    ':firstname' => $firstname,
                    ':lastname' => $lastname,
                    ':birthdate' => $day . '/' . $month . '/' . $year,
                    ':email' => $email,
                    ':password' => $pass,
                    ':sex' => $sex,
                    ':photo' => $photo,
                    ':isAdmin' => $admin,
                    ':phone' => $phone
                ));
            } else {                
                $req = $bdd->prepare('UPDATE members SET birthdate=:birthdate, phone=:phone, email=:email, password=:password, photo=:photo WHERE id=:id');

                $req->execute(array(
                    ':id' => $this->getID(),
                    ':birthdate' => $day . '/' . $month . '/' . $year,
                    ':phone' => $phone,
                    ':email' => $email,
                    ':password' => $pass,
                    ':photo' => $photo
                ));
            }
        
    }

    /* is the current member admin ? */

    public function isAdmin() {
// SELECT
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        $answer = $bdd->query('SELECT isAdmin FROM members WHERE id =' . $this->getID());

        $data = $answer->fetch();

        $answer->closeCursor();

        return $data['isAdmin'];
    }

    public function getSSN() {
        return $this->ssn;
    }

    public function getFirstname() {
        return $this->firstname;
    }

    public function getLastname() {
        return $this->lastname;
    }

    public function getPassword() {
        return $this->password;
    }

    public function getID() {
        return $this->id;
    }

    public function getEmail() {
        return $this->email;
    }

    public function getSex() {
        return $this->sex;
    }

    public function getPhoto() {
        return $this->photo;
    }

    public function getPhone() {
        return $this->phone;
    }

    public function getBirthdate() {
        return $this->birthdate;
    }

    public function setAdmin($a = NULL) {
        $this->isAdmin = $a;
    }

    public function setPassword($pwd = NULL) {
        $this->password = $pwd;
    }

    public function setEmail($mail = NULL) {
        $this->email = $mail;
    }

    public function setSex($s = NULL) {
        $this->sex = $s;
    }

    public function setPhoto($s = NULL) {
        $this->photo = $s;
    }

    public function setID($s = NULL) {
        $this->id = $s;
    }

    public function setSSN($s = NULL) {
        $this->ssn = $s;
    }

    public function setFirstname($s = NULL) {
        $this->firstname = $s;
    }

    public function setLastname($s = NULL) {
        $this->lastname = $s;
    }

    public function setBirthdate($s = NULL) {
        $this->birthdate = $s;
    }

    public function setPhone($s = NULL) {
        $this->phone = $s;
    }

}

?>