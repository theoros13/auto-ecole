<?php

class bdd {

    private $host = "localhost";
    private $dbName = "autoecole";
    private $user = "root";
    private $mdp = "";
    private static $maConnect;
    private static $monPdo = null;


    /**
     * bdd constructor.
     * @throws Exception
     */
    private function __construct()
    {
        try{
            bdd::$maConnect = new PDO("mysql:host=$this->host;dbname=$this->dbName", $this->user, $this->mdp);
            bdd::$maConnect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            bdd::$maConnect->query("SET CHARACTER SET utf8");
        }catch (PDOException $e){
            throw new Exception($e->getMessage(), $e->getLine());
        }
    }

    /**
     * bdd destructor
     */
    public function __destruct()
    {
        bdd::$maConnect = null;
    }

    /**
     * @return connexion a la base de donnée
     * @throws Exception
     */
    public static function getPdo(){
        if (bdd::$monPdo == null){
            bdd::$monPdo = new bdd();
        }
        return bdd::$monPdo;
    }

    /*
     * pdo pour élève
     */
    public function getAllElevel(){
        $query = bdd::$maConnect->query("Select * from eleve");
        $rep = $query->fetchAll();
        return $rep;
    }

    public function AjoutEleve($nom, $prenom, $addr){
        try{
            date_default_timezone_set('UTC');
            $now = date("Y-m-d");
            $query = bdd::$maConnect->prepare('Insert into eleve VALUE (null,:nom, :dateins, :prenom, :addr, 0)');
            $query->execute(array(
                'nom' => $nom,
                'dateins' => $now,
                'prenom' => $prenom,
                'addr' => $addr
            ));
        }catch (PDOException $e){
            $_SESSION['error'] = "élève déjà existante";
        }

        return true;
    }

    public function UpdateAddrByCode($code, $addr){
        try{
            $query = bdd::$maConnect->prepare('Update eleve set adresse = :addr where code = :code');
            $query->execute(array(
                'addr' => $addr,
                'code' => $code
            ));
        }catch (PDOException $e){
            $_SESSION['error'] = "adresse invalide";
        }

        return true;

    }

    public function getAdresseByCode($code){
        $query = bdd::$maConnect->prepare("Select adresse from eleve where code = :code");
        $query->execute(array(
           'code' => $code
        ));
        return $query->fetch(PDO::FETCH_ASSOC);
    }


    /*
     * pdo pour élève
     */
    public function getLeconPrev(){
        date_default_timezone_set('UTC');
        $now_date = date("Y-m-d");
        $query = bdd::$maConnect->prepare("Select * from lecon inner join eleve on lecon.code = eleve.code where effectuer = 'n' and Date >= :dates and lecon.code is not null");
        $query->execute(array(
            'dates' => $now_date
        ));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getLeconNoDo(){
        $query = bdd::$maConnect->query("Select * from lecon inner join eleve on lecon.code = eleve.code where lecon.code is not null and lecon.effectuer = 'n'");
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getLeconNoAffect(){
        date_default_timezone_set('UTC');
        $now_date = date("Y-m-d");
        $query = bdd::$maConnect->prepare("Select * from lecon where code is null and effectuer = 'n' and Date >= :dates");
        $query->execute(array(
            'dates' => $now_date
        ));
        return $query->fetchAll(PDO::FETCH_ASSOC);
    }

    private function getInfoLecon($code){
        $query = bdd::$maConnect->prepare('Select * from lecon where numero = :num');
        $query->execute(array(
            'num' => $code
        ));
        return $query->fetch(PDO::FETCH_ASSOC);
    }

    public function affecterLecon($eleve, $lecon){
        try{
            $info = $this->getInfoLecon($lecon);
            $query = bdd::$maConnect->prepare('update lecon set code = :eleve where numero = :lecon');
            $query->execute(array(
                'eleve' => $eleve,
                'lecon' => $lecon
            ));
            $query = null;
            $query = bdd::$maConnect->prepare('update eleve set creditHoraire = creditHoraire + :credit where code = :code');
            $query->execute(array(
                'credit' => explode(":", $info["duree"])[0],
                'code' => $eleve
            ));
            return true;
        } catch(PDOException $e){
            throw new Exception($e->getMessage());
        }
    }

    public function makeDoLecon($numero){

        try{
            var_dump($numero);
            $query = bdd::$maConnect->prepare('update lecon set effectuer = "o" where numero = :lecon');
            var_dump($query);
            $query->execute(array(
                'lecon' => $numero
            ));
            $query = null;

            $info = $this->getInfoLecon($numero);
            $query = bdd::$maConnect->prepare('update eleve set creditHoraire = creditHoraire - :credit where code = :code');
            $query->execute(array(
                'credit' => explode(":", $info["duree"])[0],
                'code' => $info["code"]
            ));
        }catch (PDOException $e){
            throw new Exception($e->getMessage() . " file " . $e->getFile());
        }

    }

    /*
     * pdo vehicule
     */
    public function getAllVehicule(){
        return bdd::$maConnect->query("select * from vehicule");
    }

    public function addVehicule($imma, $model, $couleur){
        try {
            $query = bdd::$maConnect->prepare("insert into vehicule values (:imma, :model, :color)");
            $query->execute(array(
                'imma' => $imma,
                'model' => $model,
                'color' => $couleur
            ));
            return true;
        }catch (PDOException $e){
            $_SESSION['error'] = "voiture déjà existante";
        }
    }


}