// DOM Loading (jQ)
$(document).ready(function(){
    var layer = $('.comm-layer');
        layerOpen = $('.button-comm-layer-open');
        layerClose = $('.button-comm-layer-close');
    var layerSearch = $('.layer-search') ? $('.layer-search') : '';
        layerSearchInner = layerSearch.find('.list');

    // layer open
    layerOpen.on('click', function(){
        var target = $(this);
            target.closest('.has-comm-layer').find('.comm-layer').fadeIn();
    });

    // layer close
    layerClose.on('click', function(){
        var target = $(this);
            target.closest('.has-comm-layer').find('.comm-layer').fadeOut();
    });

    // scrollbar custom (search layer)
    if(layerSearchInner.find('li').length > 3){
        layerSearchInner.mCustomScrollbar({ 
            theme:"my-theme" 
        });
    }
});

// DOM & css, image, js Loading
window.onload = function () {	
    var body = $('body');
    var section = $('#section-wrap') ? $('#section-wrap') : '';
        fullHeight = section.find('.full-height');
    var layerPop = $('.comm-layerpop');
        layerPopOpen = $('.comm-layerpop-open');

    // section - full height
    if(fullHeight){
        var sectionHeight = section.outerHeight();
        fullHeight.css({height:sectionHeight+'px'});
    }
    
    // image resize
    imageReSize();

    // body resize
    // body.css({height: $( window ).height() +'px'});

    // layerpopup open
    layerPopOpen.on('click', function(el){
        var _this = $(this);
            _thisName = _this.data('name');
        layerPopId(_thisName);
    });

    // layerpopup close
    $(document).on('click', '.button-comm-layerpop-close, .comm-layerpop-dimmed', function(){
        layerPop.fadeOut();
        $('.comm-layerpop-dimmed').fadeOut();
        body.removeClass('hidden');
    });
}

function imageReSize(){
    var images = document.querySelectorAll('.image-load') ? document.querySelectorAll('.image-load') : '';

    for (var i = 0; i < images.length; i++) {
        var img = images[i];
            parent = img.parentElement;
        if(img.naturalWidth > img.naturalHeight){
            img.style.height = '100%';
            img.style.width = 'auto';
            var division = parent.offsetWidth / img.width;
            if(division > 1){
                img.style.height = Math.floor(img.height * division) + 'px';
                img.style.width = 'auto';
            }
        }else{
            img.style.width = '100%';
            img.style.height = 'auto';
            var division = parent.offsetHeight / img.height;
            if(division > 1){
                img.style.width = Math.floor(img.width * division) + 'px';
                img.style.height = 'auto';
            }
        }
    }
}

function layerPopId(layerId){
    var body = $('body');
        target = $('.comm-layerpop#'+layerId);
        boxPosition = 'fixed';

    // popup open
    if(!$('.comm-layerpop-dimmed').length){
        body.append('<div class="comm-layerpop-dimmed"></div>');	
    }

    body.addClass('hidden');
    
    $('.comm-layerpop-dimmed').fadeIn();
    target.fadeIn();
        
    var popWidth = target.outerWidth();
        popHeight = target.outerHeight();

    // popup position
    target.css({
        'position' : boxPosition,
        'top' : '50%',
        'marginTop' : -(popHeight/2) +'px',
        'left' : '50%',
        'marginLeft' : -(popWidth/2) +'px'
    });
}
