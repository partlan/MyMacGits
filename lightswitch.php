<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ryan's Lightbulb</title>
    <link rel='stylesheet' href='lightswitch.css' type='text/css' media='screen' />

</head>
<body>
    <div id='header'>
        <h1 class='name'>Switch the lightbulb</h1>
    </div>
    
    <div id='body'>
        
        <form action='lightswitch.php' method='post'>

            <p><label>Click the button to change the lightbulb&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type='submit' name="submit" value="Enter" />
            </label></p>
        </form>
        <br /><br /><br />
        <?php 
            if (isset($_POST['submit'])) {
                
                $count = file_get_contents("count.txt");
                $count = trim($count);
                $count = $count + 1;
                $fl = fopen("count.txt","w+");
                fwrite($fl,$count);
                fclose($fl);
                
                if ($count%2==0) {
                    echo '<h1><img src="yellowlight.jpg" alt="yellow" height="200" width="160"></h1>';
                }
                else {
                    echo '<h1><img src="redlight.jpg" alt="red" height="200" width="160"><?h1>';
                }
            }  
        ?>
    </div>
    
    
    
    <div id='footer'>
        <h1 class='name'>Created By Ryan Partlan</h1>
    </div>
</body>
</html>