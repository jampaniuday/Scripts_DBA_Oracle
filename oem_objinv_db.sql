col CM_TARGET_NAME for a15
select CM_TARGET_NAME,OWNER,INVOBJ_COUNT,LAST_COLLECTION_TIMESTAMP 
from SYSMAN.CM$MGMT_DB_INVOBJ_CNT_ECM where cm_target_name like upper('%&1%')
order by 1, 3 desc;
col CM_TARGET_NAME clear