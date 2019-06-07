<!DOCTYPE html>
<div class="jumbotron text-center">
    <h1>留言板</h1>
</div>
<?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData);
    foreach($__currentLoopData as $user): $__env->incrementLoopIndices();
    $loop = $__env->getLastLoop();
    ?>
    <tr>
        <a href="<?php echo e(url('/view/')); ?>/<?php echo e($user->id); ?>" > <?php echo e(str_limit($user->title, 80, ' ...')); ?></a>
        <!-- <?php echo e(date('Y-m-d H:i:s',$user->created_at)); ?> -->
    </tr>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

</table>
<?php echo e($users->links()); ?>
<div class="card-header" >欢迎发布留言 </div>
<form method="post" action="">
    <?php echo e(csrf_field()); ?>
        <textarea  name="title" id="title" rows="3"  content="输入留言内容"></textarea>
    <button type="submit" class="btn btn-primary" onclick="('发布成功')">发布</button>
</form>
    <div class="card-header">标题</div>
    <div class="card-body">内容\</div>
<script>
    function public_message(message)
    {
        var v = document.getElementById('title').value;

        if (message) {
            document.getElementById("public_ajax_message").innerHTML=message;
        }
        document.getElementById('public_ajax_message').style.display="";
        setTimeout("disappear()",2000);
    }
    function disappear(){
        document.getElementById('public_ajax_message').style.display="none";
    }
</script>
</body>
</html>