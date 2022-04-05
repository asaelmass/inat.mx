<?php
header('Content-Type: application/json');

require('dbconfig.php');

$contactosData = array();

if (isset($_GET['comando'])) $comando=$_GET['comando'];
if (isset($_GET['pais'])) $pais=$_GET['pais'];
if (isset($_GET['ciudad'])) $ciudad=$_GET['ciudad'];

if ($comando =='paises'){
    $query = "SELECT pais_id, pais FROM dir_paises Order by pais";    

    $stmt = $DBcon->prepare($query);
    $stmt->execute();

    while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
      
          $contactosData['Paises'][] = $row;
     
    }
    echo json_encode($contactosData);
    exit;
}
if ($comando =='ciudades'){
    $query = "SELECT ciudad_id, ciudad FROM dir_ciudades Where pais_id={$pais} Order by ciudad";    

    $stmt = $DBcon->prepare($query);
    $stmt->execute();

    while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
      
          $contactosData['Ciudades'][] = $row;
     
    }
    echo json_encode($contactosData);
    exit;
}

if ($comando =='contactos'){
    $query = "SELECT * 
        FROM dir_contactos contactos
        Left Join dir_ciudades c On c.ciudad_id = contactos.ciudad_id
        Left Join dir_paises p On c.pais_id = p.pais_id
        Left Join (Select max(di.valor),di.id,ci.contacto_id From dir_insignias di Left Join dir_contacto_insignias ci On di.id = ci.insignia_id  Group by ci.contacto_id ) ci On contactos.contacto_id = ci.contacto_id
        Where contactos.ciudad_id={$ciudad} 
        Order by nombre";    

    $stmt = $DBcon->prepare($query);
    $stmt->execute();

    while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
      
          $contactosData['Contactos'][] = $row;
     
    }
    echo json_encode($contactosData);
    exit;
}

 ?>