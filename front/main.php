<div class="di"
    style="height:540px; border:#999 1px solid; width:53.2%; margin:2px 0px 0px 0px; float:left; position:relative; left:20px;">
    <marquee scrolldelay="120" direction="left" style="position:absolute; width:100%; height:40px;">
        <?php
        $ads=$Ad->all(['sh'=>1]);
        foreach($ads as $ad){
            echo $ad['text'];
            // echo "&nbsp;&nbsp;&nbsp;"
            echo str_repeat("&nbsp;",4) ;
        }
        // 這段沒有成功，可刪-> echo q("select group_concat('&nbsp;&nbsp;&nbsp;&nbsp;',`text`) from `ads` where `sh`=1 group by id")[0];
        ?>
    </marquee>
    <div style="height:32px; display:block;"></div>
    <!--正中央-->
    
    <div style="width:100%; padding:2px; height:290px;">
        <div id="mwww" loop="true" style="width:100%; height:100%;">
            <div style="width:99%; height:100%; position:relative;" class="cent">沒有資料</div>
        </div>
    </div>
    
    <script>
    var lin = new Array();
    // 抓 lin 裡面的動畫資料去撥放
    // lin=['upload/01C01.gif','upload/01C02.gif'];
        <?php
        $mvs=$Mvim->all(['sh'=>1]);
        foreach($mvs as $mv){
            echo "lin.push('upload/{$mv['img']}');";
        }
        ?>
    var now = 0;
    if (lin.length > 1) {
        // 每間隔3秒，執行ww()程式
        // setInterval 是非同步的機制
        setInterval("ww()", 3000);
        // now = 1;
    }

    function ww() {
        // console.log("HI");
        $("#mwww").html("<embed loop=true src='" + lin[now] + "' style='width:99%; height:100%;'></embed>")
        //$("#mwww").attr("src",lin[now])
        now++;
        if (now >= lin.length)       
            now = 0;
    }

    ww();
    </script>

    <div
        style="width:95%; padding:2px; height:190px; margin-top:10px; padding:5px 10px 5px 10px; border:#0C3 dashed 3px; position:relative;">
        <span class="t botli">最新消息區
        </span>
        <ul class="ssaa" style="list-style-type:decimal;">
        </ul>
        <div id="altt"
            style="position: absolute; width: 350px; min-height: 100px; background-color: rgb(255, 255, 204); top: 50px; left: 130px; z-index: 99; display: none; padding: 5px; border: 3px double rgb(255, 153, 0); background-position: initial initial; background-repeat: initial initial;">
        </div>
        <script>
        $(".ssaa li").hover(
            function() {
                $("#altt").html("<pre>" + $(this).children(".all").html() + "</pre>")
                $("#altt").show()
            }
        )
        $(".ssaa li").mouseout(
            function() {
                $("#altt").hide()
            }
        )
        </script>
    </div>
</div>