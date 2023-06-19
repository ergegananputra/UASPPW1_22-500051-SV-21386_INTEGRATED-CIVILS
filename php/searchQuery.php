<?php 
    include "conn.php";

    $keyword = $_GET['keyword'];

    if ($keyword != "*") {
        $complement = "where name_citizen like '%". $keyword ."%' or id_citizen like '%". $keyword ."%'";
    } else{
        $complement = "";
    }

    $sql = "select name_citizen, id_citizen, gender_citizen, social_credit_point from citizen ". $complement;
    $result = mysqli_query($conn, $sql);

    $status = array(
        1 => "good",
        2 => "medium",
        3 => "bad"
    );

    foreach ($result as $row) {
        $index = $row['social_credit_point'];
        if ($index < 400) {
            $index = $status[3];
        } elseif ($index < 700){
            $index = $status[2];
        } else {
            $index = $status[1];
        }

        try {
            $scp = intval($row['social_credit_point']);
        } catch (\Throwable $th) {
            $scp = 0;
        }

        
        echo '
            <div class="card">
                <div class="row no-gutters">
                    <div class="col-md-7">
                        <div class="card-body">
                            <h5 class="card-title">'. $row['name_citizen'] .'</h5>
                            <p class="card-text">'. $row['id_citizen'] .'</p>
                            <p class="card-text">'. $row['gender_citizen'] .'</p>
                        </div>
                    </div>
                    <div class="col-md-5 rightColor ' . $index . '">
                        <div class="card-body">
                            <p class="card-point"><span class="status-text">'. $scp .'</span> <small>pts</small></p>
                        </div>
                    </div>
                </div>
            </div>
        ';
    }

    mysqli_close($conn);
?>