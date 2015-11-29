<?php
class Comment
{
    // put here the names of fields
    private $id = NULL;
    private $comment = NULL;
    private $date = NULL;
    private $idSender = NULL;
    private $idReceiver = NULL;
    
    public function __construct($id = NULL) {
        if ($id != NULL) {

            $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
            $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

            $answer = $bdd->query('SELECT * FROM comments WHERE id =' . $id);

            $data = $answer->fetch();

            $this->setID($data['id']);
            $this->setComment($data['comment']);
            $this->setDate($data['date']);
            $this->setIDSender($data['idSender']);
            $this->setIDReceiver($data['idReceiver']);
            
            $answer->closeCursor();
        }
    }
    
    public function save($idReceiver, $idSender, $comment) {
        // INSERT, UPDATE
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $bdd = new PDO(DSN, DB_USERNAME, DB_PASSWORD, $pdo_options);

        if ($this->getID() == NULL) {
            $req = $bdd->prepare('INSERT INTO comments(idReceiver, idSender, comment, date)
                              VALUES(:idReceiver, :idSender, :comment, :date)');

            $req->execute(array(
                'idReceiver' => $idReceiver,
                'idSender' => $idSender,
                'comment' => $comment,
                'date' => date("Y-m-d H:i:s")
            ));
        } else {
            $req = $bdd->prepare('UPDATE comments SET comment=:comment, date=:date, idSender=:idSender, idReceiver=:idReceiver WHERE id=:id');

            $req->execute(array(
                'id' => $this->getID(),
                'idReceiver' => $idReceiver,
                'idSender' => $idSender,
                'comment' => $comment,
                'date' => date("Y-m-d H:i:s")
            ));
        }
    }
    
    public function getID() {
        return $this->id;
    }
    
    public function getIDSender() {
        return $this->idSender;
    }
    
    public function getIDReceiver() {
        return $this->idReceiver;
    }
    
    public function getDate() {
        return $this->date;
    }
    
    public function getComment() {
        return $this->comment;
    }
    
    public function setID($a = NULL) {
        $this->id = $a;
    }
    
    public function setIDSender($a = NULL) {
        $this->idSender = $a;
    }
    
    public function setIDReceiver($a = NULL) {
        $this->idReceiver = $a;
    }
    
    public function setDate($a = NULL) {
        $this->date = $a;
    }
    
    public function setComment($a = NULL) {
        $this->comment = $a;
    }
}

?>