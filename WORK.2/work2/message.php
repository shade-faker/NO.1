<?php
class Message{
    var $title;
    var $name;
    var $content;
    function construct($t,$n,$c){
        $this->$t;
        $this->$n;
        $this->$c;
    }
    function  show(){
        echo"标题:".$this->title."<br>";
        echo"姓名:".$this->name."<br>";
        echo"留言:".$this->content."<br>";
        echo"<br>";
    }
}
class SAVE{
    var $database=null;
    function linkToMySql(){
        $host="localhost";
        $account="root";
        $password="";
        $this->database = mysqli_connect($host,$account,$password);
        $return=mysqli_select_db("message");
    }//PHPSTROM和数据库的连接存在问题，暂时还未解决
    function back(){

        mysqli_close($this->database);
    }
}
$ME =new Message();
?>