<?php

require_once dirname(__FILE__) . '/../lightmvc/ActionController.php';
require_once dirname(__FILE__) . '/../model/Members.php';
require_once dirname(__FILE__) . '/../model/Member.php';

class MembersController extends ActionController {

    /**
     * Simple index page which links to the main available actions
     */
    public function indexAction() {
        // Do nothing
    }

    public function signupAction() {

        $msg = "";

        if (isset($_POST['ssnSignUp']) &&
                isset($_POST['firstnameSignUp']) &&
                isset($_POST['lastnameSignUp']) &&
                isset($_POST['monthSignUp']) &&
                isset($_POST['daySignUp']) &&
                isset($_POST['yearSignUp']) &&
                isset($_POST['sexSignUp']) &&
                isset($_POST['phoneSignUp']) &&
                isset($_POST['password1SignUp']) &&
                isset($_POST['password2SignUp']) &&
                isset($_POST['emailSignUp'])) {

            if (Members::checkSSNAlreadyExist($_POST['ssnSignUp']) == false) {
                $newMember = new Member();
                $msg = "";

                // use member : save
                $newMember->save($_POST['ssnSignUp'], $_POST['firstnameSignUp'], $_POST['lastnameSignUp'], $_POST['daySignUp'], $_POST['monthSignUp'], $_POST['yearSignUp'], $_POST['emailSignUp'], $_POST['password1SignUp'], $_POST['sexSignUp'], NULL, 0, $_POST['phoneSignUp']);

                $this->redirect('/index/index');
            } else {
                $msg = "User Already Exists";
            }

            unset($_POST);
        }

        $this->msg = $msg;
        $this->actualYear = date("Y");

        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'none';
        $tableau[2] = 'none';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;
    }

    public function signinAction() {
        // use members : signin
        if (isset($_POST['email']) && isset($_POST['password'])) {
            $signInOkay = Members::signIn($_POST['email'], $_POST['password']);

            if ($signInOkay == TRUE) {
                $connectedMember = new Member($_POST['email']);

                $_SESSION['connected'] = TRUE;
                $_SESSION['email'] = $connectedMember->getEmail();
                $_SESSION['isAdmin'] = $connectedMember->isAdmin();
                $_SESSION['idMember'] = $connectedMember->getID();
                $_SESSION['firstname'] = $connectedMember->getFirstname();
                $_SESSION['lastname'] = $connectedMember->getLastname();

                unset($_POST);
                $this->redirect('/profile/edit');
            } else {
                $_SESSION['connected'] = FALSE;
                $this->msgfailed = "Connection Failed";
            }
        }

        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'none';
        $tableau[2] = 'none';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;
    }

    public static function listAction() {
        // use members : list
        if (isset($_SESSION['connected']) && $_SESSION['connected'] == TRUE && $_SESSION['isAdmin'] == 1) {
            return Members::getFrontProfiles(true);
        } else {
            return FALSE;
        }
    }

    public function deleteAction() {
        // use members: delete 
        if (isset($_SESSION['connected']) && $_SESSION['connected'] == TRUE && $_SESSION['isAdmin'] == 1) {
            // TODO: Set an id as parameter
            Members::deleteProfile($_SESSION['idMember'], $_POST['idDelete']);

            $this->redirect('/profile/view');
        }
        else
            $this->redirect('/members/signin');
    }

    public function logoutAction() {
        if ($_SESSION['connected'] == TRUE && isset($_SESSION['connected'])) {
            $_SESSION['connected'] = FALSE;
            session_destroy();
            $this->redirect('/index/index');
        } else {
            $this->redirect('/index/index');
        }
    }

    public function addpatientAction() {

        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'none';
        $tableau[2] = 'none';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;

        if ($_SESSION['connected'] == TRUE && isset($_SESSION['connected'])) {
            if (isset($_SESSION['isAdmin']) && $_SESSION['isAdmin'] == 1) {

                $this->tab = Members::getAssociatedPatient($_SESSION['idMember']);

                if (isset($_POST['patientName']) && $_POST['patientName'] != "-") {

                    Members::associatePatientDoctor($_POST['patientName'], $_SESSION['idMember']);

                    $this->redirect('/profile/view');
                }
            }
        } else {
            $this->redirect('/index/index');
        }
    }

    public function deletepatientAction() {

        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'none';
        $tableau[2] = 'none';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;

        if (isset($_SESSION['connected']) && $_SESSION['connected'] == TRUE && $_SESSION['isAdmin'] == 1) {
            // TODO: Set an id as parameter
            $this->tab = Members::getAssociatedPatient($_SESSION['idMember']);
            if (isset($_POST['patientName'])) {
                Members::deleteProfile($_SESSION['idMember'], $_POST['patientName']);
                Members::deleteMember($_POST['patientName']);
                $this->redirect('/profile/view');
            }
        } else {
            $this->redirect('/index/index');
        }
    }

}

?>