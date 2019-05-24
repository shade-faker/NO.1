<?php

include_once('message.php');

class MessageBoard extends SAVE{
    var $messages = array();
    function construct()
    {
        parent::linkToMySql();
        $this->receiveMessage();
        $this->saveData();
        $this->loadData();
        $this->showForm();
    }

    function receiveMessage()
    {
        if (count($_POST) != 0) {
            $this->saveData($_POST['title'], $_POST['userName'], $_POST['content']);
        }
    }
    function saveData($t, $n, $c)
    {
        $query = "INSERT INTO 'message'('title','name','content')VALUE ('" . $t . "','" . $n . "','" . $c . "');";
        mysqli_query($query);
        echo "Title:" . $t . "<br>";
        echo "userName:" . $n . "<br>";
        echo "Content" . $c . "<br>";
    }

    function loadData()
    {
        $query = "SELECT * FROM'message';";
        $return = mysqli_query($query);
        while ($row = mysqli_fetch_array($return)) {
            $temp = new Message($row['title'], $row['name'], $row['content']);
            array_push($this->message, $temp);
        }

    }
    function showMessage()
    {
        foreach ($this->messages as $m) {
            $m->show();
        }
    }
    function showForm()
    {
        echo "<form action=''method='post'>";
        echo "标题：" . "<input type='text' name='title'>" . "<br>";
        echo "姓名：" . "<input type='text' name='userName'>" . "<br>";
        echo "留言：" . "<input type='text' name='content' >"."<br>";
        echo "<input type='submit'>";
        echo "</from>";
    }
}
$MB = new MessageBoard();
?>

