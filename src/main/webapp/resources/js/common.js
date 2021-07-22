// DOM Loading (jQ)
$(document).ready(function(){
    var sliderWrap = $('.slider-wrap') ? $('.slider-wrap') : '';
        slider = sliderWrap.find('.slider');
        sliderBtnPrev = sliderWrap.find('.button-prev');
        sliderBtnNext = sliderWrap.find('.button-next');
        sliderList = slider.find('li');
    var layer = $('.comm-layer');
        btnLayerOpen = $('.button-comm-layer-open');
        btnLayerClose = $('.button-comm-layer-close');
    var tabMenuWrap = $('.comm-tab-wrap') ? $('.comm-tab-wrap') : '';
        tabMenu = tabMenuWrap.find('.tab-menu li');
        tabBox = tabMenuWrap.find('.tab-box');
    var btnToggle = $('.button-toggle');
        btnParentToggle = $('.button-parent-toggle');
    var toggleButton = $('.button-comm-toggle');
	var navigation = $('.navigation') ? $('.navigation') : '';
        naviArea = navigation.find('.navi-area');
	    naviButton = naviArea.find('.navi-title');
	    naviList = naviArea.find('.list-inner');
    var layerSearch = $('.layer-search') ? $('.layer-search') : '';
        layerSearchList = layerSearch.find('.list');
        layerSearchBtnClose = layerSearch.find('.button-search-close');
    var post = $('.post-wrap') ? $('.post-wrap') : '';
        btnComment = post.find('.button-comment');

    // scrollbar custom (navigation)
    naviList.each(function (index, item) {
        var length = naviList.eq(index).find('li').length;
        if(length > 5){
            naviList.eq(index).mCustomScrollbar({ 
                theme:"my-theme" 
            });
        }
    });
    // scrollbar custom (layer - search)
    if(layerSearchList.find('li').length > 3){
        layerSearchList.mCustomScrollbar({ 
            theme:"my-theme" 
        });
    }
    layerSearchBtnClose.on('click', function(){
        layerSearchList.mCustomScrollbar('destroy');
    });

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

    // layer open
    btnLayerOpen.on('click', function(){
        var _this = $(this);
            _this.closest('.has-comm-layer').find('.comm-layer').fadeIn();
    });
    // layer close
    btnLayerClose.on('click', function(){
        var _this = $(this);
            _this.closest('.has-comm-layer').find('.comm-layer').fadeOut();
    });

    // button - toggle on/off (bookmark, like)
    btnToggle.on('click', function(e){
        var _this = $(this);
        _this.toggleClass('on');
    });
    btnParentToggle.on('click', function(e){
        var _this = $(this);
        _this.closest('.parent-toggle').toggleClass('on');
    });

    // toggle on/off
    $('.toggle-area:nth-child(3n+1)').find('.toggle-content').show();
    toggleButton.on('click', function(e){
        e.stopPropagation();
        var _this = $(this);
            parent = _this.closest('.toggle-area');
        parent.siblings('.toggle-area').find('.toggle-content').stop().slideUp(500);
        parent.find('.toggle-content').stop().slideDown(500);
    });

    // tab - on/off
    if($('.tab-box').size() > 0){
        tabMenu.eq(0).addClass('on');
        tabMenuWrap.find('.tab-box').eq(0).addClass('show');
    }
    tabMenu.on('click', function(){
        var _this = $(this)
            idx = _this.index();
        tabMenu.removeClass('on');
        _this.addClass('on');
        tabBox.removeClass('show');
        tabMenuWrap.find('.tab-box').eq(idx).addClass('show');
    });

    // navigation - on/off
    naviButton.on('click', function(e){
        e.stopPropagation();
        var _this = $(this);
            parent = _this.closest('.navi-area');
            parent.toggleClass('on');
        parent.find('.navi-list').stop().slideToggle(500);
    });

    // comment - focus
    btnComment.on('click', function(){
        var _this = $(this);
        _this.closest('.post-wrap').find('.input-comment').focus();
    });
    
});

// DOM & css, image, js Loading
window.onload = function () {	
    var body = $('body');
    var section = $('#section-wrap') ? $('#section-wrap') : '';
        fullHeight = section.find('.full-height');
    var popup = $('.comm-popup') ? $('.comm-popup') : '';
        popupInner = popup.find('.popup-inner');    
        popupList = popupInner.find('.list-inner');
        popupCommentList = popup.find('.comment-list');
        buttonPopupOpen = $('.button-comm-popup-open');
    var popupNaviBookmark = $('#popup-navi-bookmark') ? $('#popup-navi-bookmark') : '';
        popupNaviBookmarkInner = popupNaviBookmark.find('.list-inner');

    // image resize
    imageReSize();

    // section - full height
    if(fullHeight){
        var sectionHeight;
        if(fullHeight.hasClass('side-section')){
            sectionHeight = section.outerHeight()-120;
        }else{
            sectionHeight = section.outerHeight()-1;
        }
        fullHeight.css({height:sectionHeight +'px'});
    }

    // popup open
    buttonPopupOpen.on('click', function(){
        var _this = $(this);
            _thisName = _this.data('name');

        popupShow(_thisName);

        // scrollbar custom (navigation popup)
        if(popupList){
            if(popupList.find('li').length > 5){
                popupList.mCustomScrollbar({ 
                    theme:"my-theme" 
                });
            }
        }
        
        // scrollbar custom (comment)
        if(popupCommentList){
            popupCommentList.each(function (index) {
                var length = popupCommentList.eq(index).find('li').length;
                if(length > 2){
                    popupCommentList.eq(index).mCustomScrollbar({ 
                        theme:"my-theme" 
                    });
                }
            });
        }

        imageReSize();
    });
    // popup close
    $(document).on('click', '.button-comm-popup-close, .comm-popup-dimmed', function(){
        popup.fadeOut();
        $('.comm-popup-dimmed').fadeOut();
        body.removeClass('hidden');
        if(popupList){
            popupList.mCustomScrollbar('destroy');
        }
        if(popupCommentList){
            popupCommentList.mCustomScrollbar('destroy');
        }
    });
    
}

// image resize
function imageReSize(){
    var images = document.querySelectorAll('.image-load') ? document.querySelectorAll('.image-load') : '';

    for (var i = 0; i < images.length; i++) {
        var img = images[i];
            parent = img.closest(".image-parent") ? img.closest(".image-parent") : img.parentElement;
        if(img.naturalWidth > img.naturalHeight){
            img.style.height = '100%';
            img.style.width = 'auto';
            var divisionW = parent.offsetWidth / img.width;
            var divisionH = parent.offsetHeight / img.height;
            if(divisionW > 1){
                img.style.height = Math.floor(img.height * divisionW) + 'px';
                img.style.width = 'auto';
            }else if(divisionH > 1){
				img.style.width = Math.floor(img.width * divisionH) + 'px';
                img.style.height = 'auto';
			}
        }else{
            img.style.width = '100%';
            img.style.height = 'auto';
            var divisionH = parent.offsetHeight / img.height;
            var divisionW = parent.offsetWidth / img.width;
            if(divisionH > 1){
                img.style.width = Math.floor(img.width * divisionH) + 'px';
                img.style.height = 'auto';
            }else if(divisionW > 1){
                img.style.height = Math.floor(img.height * divisionW) + 'px';
                img.style.width = 'auto';
            }
        }
    }
}

// popup show
function popupShow(layerId){
    var body = $('body');
        target = $('.comm-popup#'+layerId);
        width = target.outerWidth();
        height = target.outerHeight();

    if(!$('.comm-popup-dimmed').length){
        body.append('<div class="comm-popup-dimmed"></div>');	
    }
    $('.comm-popup-dimmed').fadeIn();
    target.fadeIn();
    body.addClass('hidden');

    target.css({
        'position' : 'fixed',
        'top' : '50%',
        'marginTop' : -(height/2) +'px',
        'left' : '50%',
        'marginLeft' : -(width/2) +'px'
    });
}