<?php

require_once dirname(__FILE__) . '/../lightmvc/ActionController.php';
require_once dirname(__FILE__) . '/../controllers/MembersController.php';

class IndexController extends ActionController {

    public function indexAction() {
        // members : getFrontProfiles

        $tableau = array();
        $tableau[0] = 'active';
        $tableau[1] = 'none';
        $tableau[2] = 'none';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;
    }

    public function servicesAction() {
        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'active';
        $tableau[2] = 'none';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;
    }

    public function whoareweAction() {
        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'none';
        $tableau[2] = 'active';
        $tableau[3] = 'none';

        $this->activeBar = $tableau;
    }

    public function contactAction() {
        $tableau = array();
        $tableau[0] = 'none';
        $tableau[1] = 'none';
        $tableau[2] = 'none';
        $tableau[3] = 'active';

        $this->activeBar = $tableau;
    }

    public function rssAction() {
        $this->_includeTemplate = false; // to hide footer & header

        if (isset($_SESSION['connected']) && $_SESSION['connected'] == TRUE) {
            $idMember = $_SESSION['idMember'];

            $exams = Members::getRss($idMember);
            $rss = '<?xml version="1.0" encoding="UTF-8" ?>
<rss version="2.0">
		<channel>
			<title>List of exams :</title>
			<description>All informations about exams.</description>
			<pubDate>the current day</pubDate>';

            $i = 1;

            foreach ($exams as $r) {
                $rss = $rss . '<item>
				<title>Exams n°' . $i . ' : </title>
				<description>Doctor : ' . $r->getDoctor() . ', Service : ' . $r->getService() . ', Date : ' . $r->getDate() . ', Comment : ' . $r->getComment() . '</description>
                                </item>';

                $i++;
            }

            $rss = $rss . '</channel>
			</rss>';

            $this->rss = $rss; // transmit it to view
        } else {
            $this->redirect('/index/index');
        }
    }

}

?>