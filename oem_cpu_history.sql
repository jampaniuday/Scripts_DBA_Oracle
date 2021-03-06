col "TARGET_NAME" for a40

--CPU Utilization Daily
select  "MGMT$METRIC_DAILY"."TARGET_NAME" as "TARGET_NAME",
  --"MGMT$METRIC_DAILY"."TARGET_TYPE" as "TARGET_TYPE",
  --"MGMT$METRIC_DAILY"."METRIC_NAME" as "METRIC_NAME",
  "MGMT$METRIC_DAILY"."ROLLUP_TIMESTAMP" as "ROLLUP_TIMESTAMP",
  "MGMT$METRIC_DAILY"."SAMPLE_COUNT" as "SAMPLE_COUNT",
  "MGMT$METRIC_DAILY"."AVERAGE" as "AVERAGE",
  "MGMT$METRIC_DAILY"."MINIMUM" as "MINIMUM",
  "MGMT$METRIC_DAILY"."MAXIMUM" as "MAXIMUM",
  "MGMT$METRIC_DAILY"."STANDARD_DEVIATION" as "STANDARD_DEVIATION"
 from "MGMT_VIEW"."MGMT$METRIC_DAILY" "MGMT$METRIC_DAILY"
where metric_name = 'Load'
 and COLUMN_LABEL like '%CPU Utilization%'
 and "MGMT$METRIC_DAILY"."TARGET_NAME" like '%&1%'
 and "MGMT$METRIC_DAILY"."TARGET_TYPE" ='host'
 and "MGMT$METRIC_DAILY"."ROLLUP_TIMESTAMP" > trunc(sysdate)-10
 ORDER BY "ROLLUP_TIMESTAMP";
 
 col "TARGET_NAME" clear