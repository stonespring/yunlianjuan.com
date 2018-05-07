<include file="public:header" />
<!--标签-->
<div class="pad_lr_10" >
    <div class="J_tablelist table_list" data-acturi="{:U('agent/ajax_edit')}">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
				<th width="50"><span tdtype="order_by" fieldname="id">ID</span></th>
                <th align="left"><span data-tdtype="order_by" data-field="name">代理级别名称</span></th>
                <th width="50" align="left"><span data-tdtype="order_by" data-field="ordid">排序</span></th>
                <th width="40"><span data-tdtype="order_by" data-field="status">{:L('status')}</span></th>
                <th width="120">{:L('operations_manage')}</th>
            </tr>
        </thead>
    	<tbody>
            <volist name="list" id="val">
            <tr>
				<td align="center">{$val.id}</td>
                <td align="left"><span data-tdtype="edit" data-field="name" data-id="{$val.id}" class="tdedit">{$val.name}</span></td>
                <td align="left"><span data-tdtype="edit" data-field="ordid" data-id="{$val.id}" class="tdedit" style="color:{$val.colors};">{$val.ordid}</span></td>
                <td align="center"><img data-tdtype="toggle" data-id="{$val.id}" data-field="status" data-value="{$val.status}" src="__STATIC__/images/admin/toggle_<if condition="$val.status eq 0">disabled<else/>enabled</if>.gif" /></td>
                <td align="center">
                	<a href="javascript:;" class="J_showdialog" data-uri="{:U('agent/edit', array('id'=>$val['id']))}" data-title="{:L('edit')} - {$val.name}"  data-id="edit" data-acttype="ajax" data-width="400" data-height="130">{:L('edit')}</a> | 
                    <a href="javascript:;" class="J_confirmurl" data-acttype="ajax" data-uri="{:U('agent/delete', array('id'=>$val['id']))}" data-msg="{:sprintf(L('confirm_delete_one'),$val['name'])}">{:L('delete')}</a>
                </td>
            </tr>
            </volist>
    	</tbody>
    </table>
    </div>

</div>
<include file="public:footer" />
</body>
</html>