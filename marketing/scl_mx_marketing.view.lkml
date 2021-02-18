include: "//bc360_marketing/**/*.view.lkml"
include: "//bc360_campaigns/**/*.view.lkml"

view: scl_arch_campaigns {
  extends: [arch_campaigns]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            ap.medium,
            ap.account,
            ap.organization,
            ap.user_manager,
            ap.user_owner,
            ap.campaign_category,
            ap.campaign_group,
            ap.campaign,
            ap.program,
            ap.service_line_code,
            ap.service_line,
            ap.service_offering,
            ap.service_detail,
            ap.campaign_label,
            ap.campaign_region,
            ap.campaign_location,
            ap.campaign_tier,
            ap.campaign_matchtype,
            ap.agency,
            ap.adgroup,
            ap.mode,
            ap.account_id,
            ap.campaign_id,
            ap.client_id,
            ap.organization_id,
            ap.adgroup_id,
            ap.channel_type,
            ap.channel_subtype,
          FROM arch_campaigns.arch_campaigns_base ap
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00002' AND
                ap.agency = 'Fluency'
          ;;
  }
}

view: scl_mx_marketing {
  view_label: "SCL - Marketing Insights"
  label: "SCL - Marketing"
  extends: [mx_marketing]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            ROW_NUMBER() OVER () row_id,
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00002' AND
                ap.agency = 'Fluency' AND
                ## mxmmd.date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL 1 DAY) AND
                ## FILTER ADDED ON 01/25/21: Remove _all_ SCL data within a fixed time period (due to mistaken overspend)
                NOT(timestamp BETWEEN TIMESTAMP('2021-01-14 10:00:00.000 America/Denver') AND TIMESTAMP('2021-01-15 18:00:00.000 America/Denver'))
          ;;
          partition_keys: ["date"]
          cluster_keys: ["adgroup_id", "timestamp"]
  }

  dimension: row_id {
    primary_key: yes
    sql: ${TABLE}.row_id ;;
  }
}

view: scl_mx_marketing_ppc {
  view_label: "SCL - Marketing Insights"
  label: "SCL - PPC Only"
  extends: [mx_marketing]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            ROW_NUMBER() OVER () row_id,
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00002' AND
                ap.agency = 'Fluency' AND
                mxmmd.medium = 'PPC' AND
                ## mxmmd.date <= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), MONTH), INTERVAL 1 DAY) AND
                ## FILTER ADDED ON 01/25/21: Remove _all_ SCL data within a fixed time period (due to mistaken overspend)
                NOT(timestamp BETWEEN TIMESTAMP('2021-01-13 12:00:00.000 America/Denver') AND TIMESTAMP('2021-01-15 18:00:00.000 America/Denver'))
                ;;
          partition_keys: ["date"]
          cluster_keys: ["adgroup_id", "timestamp"]
  }

  dimension: row_id {
    primary_key: yes
    sql: ${TABLE}.row_id ;;
  }
}
