<?php
require_once('config.php');

function execute($sql)
{
	//save data into table
	// open connection to database
	$con = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
	//insert, update, delete
	mysqli_query($con, $sql);

	//close connection
	mysqli_close($con);
}

function executeResult($sql)
{
	//save data into table
	// open connection to database
	$con = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
	//insert, update, delete
	$result = mysqli_query($con, $sql);
	$data   = [];
	while ($row = mysqli_fetch_array($result, 1)) {
		$data[] = $row;
	}
	mysqli_close($con);
	return $data;
}
function insertAndGetId($sql) {
    // Biến $conn phải được khai báo global để dùng trong hàm
    	$con = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);

    // Thực hiện truy vấn
    $result = mysqli_query($con, $sql);

    // Kiểm tra lỗi
    if ($result === false) {
        die("Lỗi thực thi SQL: " . mysqli_error($con));
    }

    // Lấy ID của bản ghi vừa thêm
    $last_id = mysqli_insert_id($con);

    return $last_id;
}

function executeSingleResult($sql)
{
	//save data into table
	// open connection to database
	$con = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
	//insert, update, delete
	$result = mysqli_query($con, $sql);
	$row    = mysqli_fetch_array($result, 1);

	//close connection
	mysqli_close($con);

	return $row;
}
