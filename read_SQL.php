<?php
// Підключаюсь до бази даних
$link = mysql_connect('mysql.zzz.com.ua', 'RootUser', 'Admin1')
    or die('Не вдалось з"єднатися: ' . mysql_error());
// echo 'З"єднання успішно встановлено';

mysql_select_db('testsql') or die('Не вдалось вибрати базу даних');

// Виконую SQL-запит
$query = 'SELECT * FROM SecondScreen';
$result = mysql_query($query) or die('Запит не вдався: ' . mysql_error());

// Вивід результатів в html (так було в прикладі, треба буде переробити в JSON
/*echo "<table>\n";
while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
    echo "\t<tr>\n";
    foreach ($line as $col_value) {
        echo "\t\t<td>$col_value</td>\n";
    }
    echo "\t</tr>\n";
}
echo "</table>\n";
//*/

echo "[";
$flag = 0;
while ($line = mysql_fetch_array($result, MYSQL_ASSOC)) {
    if ($flag == 1) {
    	echo ",";	
    }
    if ($flag == 0) {
    	$flag = 1;
    }
    echo json_encode($line);
    
}
echo "]";

// Звільнити пам'ять від результу
mysql_free_result($result);

// Завершити з'єднання
mysql_close($link);
?>	