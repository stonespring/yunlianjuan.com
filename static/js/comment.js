/**
 * @name 商品评论
 * @author andery@foxmail.com
 * @url http://www.houtianbest.cn
 */
;(function($){
    $.htian.comment = {
        settings: {
            container: '#pub_area',
            page_list: '#note_comment_list',
            page_bar: '#J_cmt_page',
            pub_content: '#pub_content',
            pub_btn: '#pub_submit'
        },
        init: function(options){
            options && $.extend($.htian.comment.settings, options);
            $.htian.comment.list();
            $.htian.comment.publish();
        },
        //列表
        list: function(){
            var s = $.htian.comment.settings;
            $('li', $(s.page_list)).live({
                mouseover: function(){
                    $(this).addClass('hover');
                },
                mouseout: function(){
                    $(this).removeClass('hover');
                }
            });
            $('a', $(s.page_bar)).live('click', function(){
                var url = $(this).attr('href');
                $.getJSON(url, function(result){
                    if(result.status == 1){
                        $(s.page_list).html(result.data.list);
                        $(s.page_bar).html(result.data.page);
                    }else{
                        $.htian.tip({content:result.msg, icon:'error'});
                    }
                });
                return false;
            });
        },
        //发表评论
        publish: function(){
            var s = $.htian.comment.settings;
            $(s.pub_btn).live('click', function(){
                if(!$.htian.dialog.islogin()) return !1;
                var id = $(s.container).attr('data-id'),
                    dv = $(s.pub_content).attr('def-val'),
                    content = $(s.pub_content).val();
                if(content == dv){
                    $(s.pub_content).focus();
                    return false;
                }
                $.ajax({
                    url: HTIANER.root + '/?m=item&a=comment',
                    type: 'POST',
                    data: {
                        id: id,
                        content: content
                    },
                    dataType: 'json',
                    success: function(result){
                        if(result.status == 1){
                            $(s.pub_content).val('');
                            $(s.page_list).prepend(result.data);
                        }else{
                            $.htian.tip({content:result.msg, icon:'error'});
                        }
                    }
                });
            });
        }
    };
    $.htian.comment.init();
})(jQuery);