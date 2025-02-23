# 删除顶级菜单：name 需要换成想要删除模块的菜单名
DELETE FROM system_menu WHERE name in ('作者动态','Boot 开发文档','Cloud 开发文档','报表管理','工作流程','会员中心','商城系统','公众号管理','CRM 系统','ERP 系统','AI 大模型','IOT 物联网','支付管理');

# 删除子菜单：多次执行，直到 Affected rows: 0 影响条数为 0
DELETE FROM system_menu WHERE parent_id NOT IN (SELECT id FROM (SELECT id FROM system_menu) AS TEMP) AND parent_id > 0;

# 删除关联表
DELETE FROM system_role_menu WHERE menu_id NOT IN (SELECT id FROM system_menu);

select * from system_users;

delete from system_users where id >1;

select * from system_tenant;

delete from system_tenant where id >1;


# 删除 `yudao-module-member` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'member_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'member_%';

# 删除 `yudao-module-pay` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'pay_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'pay_%';

# 删除 `yudao-module-mall` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'product_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'product_%';
DELETE FROM system_dict_type WHERE type LIKE 'trade_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'trade_%';
DELETE FROM system_dict_type WHERE type LIKE 'promotion_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'promotion_%';
DELETE FROM system_dict_type WHERE type LIKE 'brokerage_enabled_condition_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'brokerage_enabled_condition_%';

# 删除 `yudao-module-erp` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'erp_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'erp_%';

# 删除 `yudao-module-crm` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'crm_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'crm_%';

# 删除 `yudao-module-mp` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'mp_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'mp_%';

# 删除 `yudao-module-report` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'report_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'report_%';

# 删除 `yudao-module-iot` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'iot_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'iot_%';

# 删除 `yudao-module-ai` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'ai_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'ai_%';

# 删除 `yudao-module-bpm` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'bpm_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'bpm_%';

# 删除 `yudao-module-brokerage` 不要的字典数据
DELETE FROM system_dict_type WHERE type LIKE 'brokerage_%';
DELETE FROM system_dict_data WHERE dict_type LIKE 'brokerage_%';


