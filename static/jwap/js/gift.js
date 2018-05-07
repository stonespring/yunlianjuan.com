/**
 * @name 礼物中心
 * @author Htian
 */
;(function($){
    $.htian.gift = {
        settings: {
            gift_btn: '.J_gift_btn'
        },
        init: function(options){
            options && $.extend($.htian.gift.settings, options);
            //详细信息切换
            $('ul.J_desc_tab').tabs('div.J_desc_panes > div');
            $.htian.gift.ec();
        },
        ec: function(){
            var s = $.htian.gift.settings;
            $(s.gift_btn).live('click', function(){
                if(!$.htian.dialog.islogin()) return !1;
                var id = $(this).attr('data-id'),
                    num_input = $(this).attr('data-num'),
                    num = $(num_input).val();
                $.getJSON(HTIANER.root + '/?m=gift&a=ec', {id:id, num:num}, function(result){
                    if(result.status == 1){
                        $.htian.tip({content:result.msg});
                    }else if(result.status == 2){
                        $.dialog({id:'gift_address', title:result.msg, content:result.data, width:'auto', padding:'', fixed:true, lock:true});
                        $.htian.gift.address_form($('#J_address_form'));
                    }else{
                        $.htian.tip({content:result.msg, icon:'error'});
                    }
                });
            });
        },
        //地址表单
        address_form: function(form){
            form.ajaxForm({
                success: function(result){
                    if(result.status == 1){
                        $.dialog.get('gift_address').close();
                        $.htian.tip({content:result.msg});
                        window.location.reload();
                    } else {
                        $.htian.tip({content:result.msg, icon:'error'});
                    }
                },
                dataType: 'json'
            });
        }
    };
    $.htian.gift.init();
})(jQuery);