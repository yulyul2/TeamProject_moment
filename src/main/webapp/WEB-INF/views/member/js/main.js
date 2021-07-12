// DOM Loading
$(document).ready(function(){	
	var navigation = $('.navigation') ? $('.navigation') : '';
        naviArea = navigation.find('.navi-area');
	    naviButton = naviArea.find('.navi-title');
	    naviList = naviArea.find('.list-inner');
    var sliderWrap = $('.slider-wrap') ? $('.slider-wrap') : '';
        slider = sliderWrap.find('.slider');
        sliderList = slider.find('li');
        sliderBtnPrev = sliderWrap.find('.button-prev');
        sliderBtnNext = sliderWrap.find('.button-next');
    var buttonToggle = $('.button-toggle') ? $('.button-toggle') : '';
        buttonParentToggle = $('.button-parent-toggle') ? $('.button-parent-toggle') : '';
    var mainPost = $('.main-post') ? $('.main-post') : '';
        post = mainPost.find('.post-wrap');
        connetButton = post.find('.button-comment');
        commentWrap = post.find('.post-comment');
        connetList = commentWrap.find('.comment-list');
    var layerPopNaviBookmark = $('#layerpop-navi-bookmark') ? $('#layerpop-navi-bookmark') : '';
        layerPopNaviBookmarkInner = layerPopNaviBookmark.find('.list-inner');

    // navigation - on/off
	naviButton.on('click', function(e){
		e.stopPropagation();
		var _this = $(this);
            parent = _this.closest('.navi-area');
            parent.toggleClass('on');
        parent.find('.navi-list').stop().slideToggle(500);
	});

    // scrollbar custom (navigation, comment)
    naviList.each(function (index, item) {
        var length = naviList.eq(index).find('li').length;
        if(length > 5){
            naviList.eq(index).mCustomScrollbar({ 
                theme:"my-theme" 
            });
        }
   });
   connetList.each(function (index, item) {
        var length = connetList.eq(index).find('li').length;
        if(length > 2){
            connetList.eq(index).mCustomScrollbar({ 
                theme:"my-theme" 
            });
        }
    });	    
    // scrollbar custom (navigation layerpopup - bookmark)
    if(layerPopNaviBookmarkInner.find('li').length > 5){
        layerPopNaviBookmarkInner.mCustomScrollbar({ 
            theme:"my-theme" 
        });
    }

    // slide
    sliderBtnPrev.hide();
    if( sliderList.length > 3 ) {
        var recommondSlider = slider.bxSlider({
            speed:600,
            infiniteLoop:true,
            slideWidth:185,
            slideMargin:15,
            maxSlides: 4,
            moveSlides:1,
            pager:false,
            controls:true,
            prevSelector: '.button-prev',
            nextSelector: '.button-next',
            nextText: '',
            prevText: ''
        });
        $('.button-prev').click(function(){
            slider.goToPrevSlide();
            return false;
        });
        $('.button-next').click(function(){
            slider.goToNextSlide();
            return false;
        });
    }

    // button - toggleOnOff (bookmark, like)
    buttonToggle.on('click', function(e){
        var _this = $(this);
        _this.toggleClass('on');
    });
    buttonParentToggle.on('click', function(e){
        var _this = $(this);
        _this.parent().toggleClass('on');
    });

    // comment - focus
    connetButton.on('click', function(e){
        var _this = $(this);
        _this.closest('.post-wrap').find('.input-comment').focus();
    });
});

// DOM & css, image, js Loading
$(window).load(function(){	
    
});