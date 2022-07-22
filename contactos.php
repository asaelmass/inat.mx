<?php
header('Content-Type: application/json');

require('dbconfig.php');

error_reporting( error_reporting() & ~E_NOTICE );

$contactosData = array();

if (isset($_GET['comando'])) $comando=$_GET['comando'];
if (isset($_GET['pais'])) $pais=$_GET['pais'];
if (isset($_GET['ciudad'])) $ciudad=$_GET['ciudad'];
if (isset($_GET['categ'])) $categ=$_GET['categ'];

if ($comando =='paises'){
    $sql = "SELECT pais_id, pais FROM dir_paises Order by pais";    

    $result = $conn->query($sql);
    //$stmt->execute();

    while($row=$result->fetch_assoc()){
      
          $contactosData['Paises'][] = $row;
     
    }
    $conf = ["def_pais_id" => get_conf('def_pais_id')];
    $contactosData['conf'] = $conf;
    echo json_encode($contactosData);
    exit;
}
if ($comando =='ciudades'){
    $sql = "SELECT ciudad_id, ciudad FROM dir_ciudades Where pais_id={$pais} Order by ciudad";    

    $result = $conn->query($sql);
    //$stmt->execute();

    while($row=$result->fetch_assoc()){
      
          $contactosData['Ciudades'][] = $row;
     
    }
    $conf = ["def_ciudad_id" => get_conf('def_ciudad_id')];
    $contactosData['conf'] = $conf;
    echo json_encode($contactosData);
    exit;
}

if ($comando =='contactos'){
    $sql_ciudad ="";
    if ($ciudad > 0) $sql_ciudad = " And c.ciudad_id={$ciudad} ";
        
    $sql = "SELECT contactos.contacto_id,c.pais_id, contactos.nombre, contactos.whatsapp, contactos. facebook, contactos.foto, c.ciudad, p.pais, di.id as insignia_id, di.insignia, di.imagen as insignia_imagen
        FROM dir_contactos contactos
        Left Join dir_ciudades c On c.ciudad_id = contactos.ciudad_id
        Left Join dir_paises p On c.pais_id = p.pais_id
        Left Join dir_insignias di On di.id = contactos.insignia_id        
        Where contactos.categ_id=${categ}
        And c.pais_id={$pais}
        {$sql_ciudad}
        Order by di.valor desc, nombre asc";    
        
    $result = $conn->query($sql);

    while($row=$result->fetch_assoc()){
        $contacto = array();
        $contacto["contacto_id"]        =   $row["contacto_id"];
        $contacto["nombre"]             =   $row["nombre"];
        $contacto["foto"]               =   $row["foto"];
        $contacto["whatsapp"]           =   $row["whatsapp"];
        $contacto["ciudad"]             =   $row["ciudad"];
        $contacto["pais"]               =   $row["pais"];
        $contacto["insignia_id"]        =   $row["insignia_id"];
        $contacto["insignia"]        =   $row["insignia"];
        $contacto["insignia_imagen"]    =   $row["insignia_imagen"];

        $filename = 'img/directorio/'.$contacto["foto"];

        if (!is_file($filename)) $contacto["foto"] ="user-placeholder.jpg";

          $contactosData['Contactos'][]= $contacto;    
    }
    echo json_encode($contactosData);
    exit;
}

function get_conf($conf){
    global $conn;
    $sql = "SELECT valor FROM conf Where conf='{$conf}'";    

    $result = $conn->query($sql);

    if (!$result) die('No se pudo consultar:' . $conn->connect_error);

    $row = $result->fetch_array();
    $confData = $row[0];
    
    return $confData;
}

 ?>