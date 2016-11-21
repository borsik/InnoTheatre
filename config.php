<?php
   define('DB_SERVER', 'localhost:5432');
   define('DB_USERNAME', 'Theatres');
   define('DB_PASSWORD', '1234');
   define('DB_DATABASE', 'postgres');
   $db = pg_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
?>