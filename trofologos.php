<?php
    $array_paises = array();
    $array_ciudades = array();

    $strJsonFileContents = file_get_contents("trofologos.json");
    $trofologos = json_decode($strJsonFileContents);

    foreach($trofologos as $trofo){
       //  var_dump($trofo->ciudad);
        if (!in_array($trofo->pais, $array_paises))
            $array_paises[$trofo->pais]=[];
         $array_paises[$trofo->pais]["ciudades"][]=$trofo->ciudad;
         array_push($array_paises[$trofo->pais]['ciudades'],$trofo->ciudad);
        //$array_ciudades=$array_paises[$trofo["pais"]];
        //if (!in_array($trofo["ciudad"], $array_paises[$trofo["pais"]])){
        //    $array_paises[$trofo["pais"]][$trofo["ciudad"]]=[];
        //    array_push($array_paises[$trofo["pais"]],$trofo["ciudad"]);
        //    echo "se agrega la ciudad {$trofo["ciudad"]} al pais {$trofo["pais"]}";
       // }
        

    }
    
    var_dump($array_paises);
?>