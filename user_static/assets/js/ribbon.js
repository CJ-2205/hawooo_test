
$(function () {
    var snowflakeURl = [
        'https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/ribbon1.png',
        'https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/ribbon2.png',
        'https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/ribbon3.png',
        'https://p8r7m4d5.stackpathcdn.com/images/ftp/spinwheel/ribbon4.png',
    ]
    var container = $("#content");
    visualWidth = container.width();
    visualHeight = container.height();
    //擷取content的寬高
    function snowflake() {
        // 容器
        var $flakeContainer = $('#snowflake');

        // 隨機六張圖
        function getImagesName() {
            return snowflakeURl[[Math.floor(Math.random() * 4)]];
        }
        // 創建一個元素
        function createSnowBox() {
            var url = getImagesName();
            return $('<div class="snowbox" />').css({
                'width': 25,
                'height': 26,
                'position': 'absolute',
                'backgroundRepeat': 'no-repeat',
                'zIndex': 15,
                'top': '-41px',
                'backgroundImage': 'url(' + url + ')'
            }).addClass('snowRoll');
        }
        //開始飄
        setInterval(function () {
            // 飄的痕跡
            var startPositionLeft = Math.random() * visualWidth - 100,
                startOpacity = 1,
                endPositionTop = visualHeight - 40,
                endPositionLeft = startPositionLeft - 100 + Math.random() * 500,
                duration = visualHeight * 10 + Math.random() * 5000;
            // 隨機透明度不小於0.5
            var randomStart = Math.random();
            randomStart = randomStart < 0.5 ? startOpacity : randomStart;
            // 創建一個元素
            var $flake = createSnowBox();
            //起始點位置
            $flake.css({
                left: startPositionLeft,
                opacity: randomStart
            });
            // 加入到容器
            $flakeContainer.append($flake);
            // 執行動畫
            $flake.transition({
                top: endPositionTop,
                left: endPositionLeft,
                opacity: 0.7
            }, duration, 'ease-out', function () {
                $(this).remove() //結束後刪除
            });
        }, 500);
    }
    snowflake()
    //彩帶飄飄

})
