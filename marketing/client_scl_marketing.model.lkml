include: "//bc360_admin/**/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/**/*.view.lkml"
include: "//bc360_services/**/*.view.lkml"
include: "//bc360_campaigns/**/*.view.lkml"
include: "//bc360_outcomes/**/*.view.lkml"
include: "//bc360_marketing/**/*.view.lkml"
include: "//bc360_timeframes/**/*.view.lkml"
# include: "//bc360_users/**/*.view.lkml"


include: "/**/*.view.lkml"

label: "SCL Health"

explore: scl_mx_ppc {
  from: arch_clients_admin
  label: "SCL - PPC"

  join: arch_campaigns {
    from: scl_arch_campaigns
    relationship: one_to_many
    type: left_outer
    sql_on: ${scl_mx_ppc.organization_id} = ${arch_campaigns.organization_id} ;;
  }

  join: mx_marketing {
    from: scl_mx_marketing_ppc
    relationship: one_to_many
    type: inner
    sql_on: ${arch_campaigns.adgroup_id} = ${mx_marketing.adgroup_id} ;;
  }

  join: arch_outcomes_admin {
    relationship: many_to_one
    type: left_outer
    sql_on: ${mx_marketing.outcome_tracker_id} = ${arch_outcomes_admin.outcome_tracker_id} ;;
  }

  join: analyst_notes_scl {
    type: left_outer
    relationship: many_to_many
    sql_on: ${arch_campaigns.campaign_group} = ${analyst_notes_scl.target};;
  }

  join: arch_timeframes {
    relationship: many_to_one
    type: left_outer
    sql_on: ${mx_marketing.timestamp} = ${arch_timeframes.timestamp} ;;
  }

  join: mx_share_impr_click {
    relationship: one_to_many
    type: left_outer

    sql_on: ((${mx_marketing.adgroup_id} = ${mx_share_impr_click.adgroup_id})
      AND (${mx_marketing.timestamp} = ${mx_share_impr_click.timestamp})) ;;
  }

  join: mx_auction_insights {
    relationship: one_to_many
    type: left_outer

    sql_on: ((${mx_marketing.adgroup_id} = ${mx_auction_insights.adgroup_id})
      AND (${mx_marketing.timestamp} = ${mx_auction_insights.timestamp}));;
  }

  join: fact_domains {
    relationship: many_to_one
    type: left_outer

    sql_on: ${mx_auction_insights.url_display_domain} = ${fact_domains.domain} ;;
  }


}
