<div class="di"
    style="height:540px; border:#999 1px solid; width:53.2%; margin:2px 0px 0px 0px; float:left; position:relative; left:20px;">
    <marquee scrolldelay="120" direction="left" style="position:absolute; width:100%; height:40px;">
    </marquee>
    <div style="height:32px; display:block;"></div>
    <!--正中央-->
    <h3>更多最新消息資料區</h3>
    <hr>
    <ul class="ssaa" style="list-style-type:decimal;">
            <?php










                $all_news=$News->all(['sh'=>1]," limit 5");
                foreach($rows as $row){
                    echo "<li>";
                    echo mb_substr($n['text'],0,20);
                    echo "<span class='all' style='display: none'>";
                    echo $n['text'];
                    echo "</span>";
                    echo "</li>";
                }
            ?>

<div class="cent">
            <?php

                if(($now-1)>0 ){ 
                    // [&lt;]就是 [<]
                    $prev=$now-1;
                    echo "<a href='?do=$do&p=$prev'> < </a>";
                }
                for($i=1;$i<=$pages;$i++){
                    echo "<a href='?do=$do&p=$i'> ";
                    echo $i;
                    echo "</a>";
                }

                if(($now+1)<=$pages){ 
                    // [&lt;]就是 [<]
                    $next=$now+1;
                    echo "<a href='?do=$do&p=$next'> > </a>";
                }

            ?>
            </div>










</div>
<div id="alt"
    style="position: absolute; width: 350px; min-height: 100px; word-break:break-all; text-align:justify;  background-color: rgb(255, 255, 204); top: 50px; left: 400px; z-index: 99; display: none; padding: 5px; border: 3px double rgb(255, 153, 0); background-position: initial initial; background-repeat: initial initial;">
</div>
<script>
$(".sswww").hover(
    function() {
        $("#alt").html("" + $(this).children(".all").html() + "").css({
            "top": $(this).offset().top - 50
        })
        $("#alt").show()
    }
)
$(".sswww").mouseout(
    function() {
        $("#alt").hide()
    }
)
</script>