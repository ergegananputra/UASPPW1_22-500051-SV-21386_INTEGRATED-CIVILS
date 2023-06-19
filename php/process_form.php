<?php 
    $res_name = $_POST['res_name'];
    $res_citizen_id = $_POST['res_citizen-id'];

    $name = $_POST['name'];
    $citizen_id = $_POST['citizen-id'];
    $gender = $_POST['gender'];
    $category_type = $_POST['category-type'];
    $location = $_POST['location'];

    include "conn.php";

    $scores = array(
        'Violence' => 50,
        'Theft' => 75,
        'Criminal Act' => 200,
        'Hate Speech' => 100,
        'Not Fair Act' => 20,
        'Abusing The Law' => 50
    );

    $sql_check = "SELECT name_citizen, id_citizen, gender_citizen, social_credit_point FROM citizen WHERE id_citizen LIKE ?";
    $stmt_check = mysqli_prepare($conn, $sql_check);
    mysqli_stmt_bind_param($stmt_check, "s", $citizen_id);
    mysqli_stmt_execute($stmt_check);
    $result_check = mysqli_stmt_get_result($stmt_check);

    if (strlen($citizen_id) == 16) {
        if (mysqli_num_rows($result_check) <= 0) {
            $phone_number = intval($citizen_id) % 100000000000;
            $insert = "'" . mysqli_real_escape_string($conn, $citizen_id) . "','" . mysqli_real_escape_string($conn, $name) . "','" . mysqli_real_escape_string($conn, $gender) . "','0" . strval($phone_number) . "'";
            $sql_insert = "INSERT INTO citizen (id_citizen, name_citizen, gender_citizen, phone_number) VALUES (". $insert .")";
            mysqli_query($conn, $sql_insert);
        }
        
        $currentDateTime = date('YmdHis');
        $crime_unique_key = substr($category_type, 0, 3) . $currentDateTime . substr($citizen_id, 0, 3);
        $insert = "'". $crime_unique_key ."', '" . mysqli_real_escape_string($conn, $scores[$category_type]) . "','" . mysqli_real_escape_string($conn, $category_type) . "','" . mysqli_real_escape_string($conn, $location) . "'";
        $sql_crime = "INSERT INTO crime (id_crime, guilty_point, kategori, lokasi) VALUES (". $insert .")";
        mysqli_query($conn, $sql_crime);
    
        $records_unique_key = substr($crime_unique_key, 3, 20) . substr($res_name, 0, 3);
        $insert = "'". $records_unique_key ."', '" . $crime_unique_key . "','" . mysqli_real_escape_string($conn, $citizen_id) . "'";
        $sql_records = "INSERT INTO crime_records (id_crime_records, id_crime, id_citizen) VALUES (". $insert .")";
        mysqli_query($conn, $sql_records);
    }

    mysqli_close($conn);

    header("Location: {$_SERVER['HTTP_REFERER']}");
    exit();

?>
