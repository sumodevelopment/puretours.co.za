SELECT * FROM module WHERE module.module_id IN ({$module_ids}) AND module.active = 1 ORDER BY FIELD('{$primary_key}',{$module_ids});