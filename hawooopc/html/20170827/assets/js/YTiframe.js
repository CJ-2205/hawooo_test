
window.onYouTubeIframeAPIReady = function() {
  var firstYTId = $(".video-slider li").eq(0).attr("data-video-id");
  var currentVIndex = 0 ;
  var isMuted;
  var videoLength = $(".video-slider li").length;


  // create youtube player
  var player;
  player = new YT.Player('player', {
    // 控制iframe大小
    height: '255',
    width: '392',
    //控制影片Ｉd  帶入第一個li內的影片id
    videoId: firstYTId,
    // 聆聽器events
    events: {
      'onReady': onPlayerReady,
      'onStateChange': onPlayerStateChange
    }
  });

// autoplay video 第一次播放
  function onPlayerReady(event) {
      event.target.playVideo();
      event.target.mute();
      isMuted = true;
  }

  // when video ends 當影片播畢
  function onPlayerStateChange(event) {

      if (event.data == YT.PlayerState.ENDED)
    {
      isMuted = player.isMuted();
      if(currentVIndex<videoLength){
        currentVIndex = currentVIndex+1 ;
      }else{
        currentVIndex=0
      }
      var autoIndex = $(".video-slider li").eq(currentVIndex).attr("data-video-id");

      if(
        isMuted == false
      ){
        player.loadVideoById({videoId:autoIndex,
              startSeconds:0,
              suggestedQuality:"large"});
          player.unMute()
          
      }else if(
      isMuted == true
      ){
        player.loadVideoById({videoId:autoIndex,
              startSeconds:0,
              suggestedQuality:"large"});
          player.mute()
      }
    }
  }

}




// 點擊影片縮圖播放影片
    
$(".video-slider li").click(function(){
	var videoID = $(this).attr("data-video-id");
	currentVIndex = $(this).index();
	$("#player").attr("src","https://www.youtube.com/embed/"+videoID+"?&autoplay=1");
})


$(document).ready(function(){

	// 自動帶入影片縮圖
	$(".video-slider li").each(function(){
		var getthisid =  $(this).attr("data-video-id");
		$(this).append("<img src='http://img.youtube.com/vi/"+getthisid+"/default.jpg'>");
	});

});





