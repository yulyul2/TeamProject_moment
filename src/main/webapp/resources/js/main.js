// DOM Loading
$(document).ready(function(){	
   
});

// DOM & css, image, js Loading
$(window).load(function(){	
    var mainPost = $('.main-post') ? $('.main-post') : '';
        post = mainPost.find('.post-wrap');
        commentWrap = post.find('.post-comment');
        commentList = commentWrap.find('.comment-list');

    // scrollbar custom (comment)
    commentList.each(function (index) {
        var length = commentList.eq(index).find('li').length;
        if(length > 2){
            commentList.eq(index).mCustomScrollbar({ 
                theme:"my-theme" 
            });
        }
    });
});