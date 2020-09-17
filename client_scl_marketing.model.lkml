include: "//bc360_admin/**/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/**/*.view.lkml"
include: "//bc360_services/**/*.view.lkml"
include: "//bc360_campaigns/**/*.view.lkml"
include: "//bc360_outcomes/**/*.view.lkml"
include: "//bc360_marketing/**/*.view.lkml"
# include: "//bc360_users/**/*.view.lkml"


include: "/**/*.view.lkml"

label: "SCL Health"

explore: scl_mx_ppc {
  from: arch_clients_admin
  label: "SCL - PPC"

  join: arch_campaigns_admin {
    relationship: one_to_many
    type: left_outer
    sql_on: ${scl_mx_ppc.organization_id} = ${arch_campaigns_admin.organization_id} ;;
  }

  join: scl_mx_marketing_ppc {
    relationship: one_to_many
    type: inner
    sql_on: ${arch_campaigns_admin.adgroup_id} = ${scl_mx_marketing_ppc.adgroup_id} ;;
  }

  join: arch_outcomes_admin {
    relationship: many_to_one
    type: left_outer
    sql_on: ${scl_mx_marketing_ppc.outcome_tracker_id} = ${arch_outcomes_admin.outcome_tracker_id} ;;
  }

  join: analyst_notes_scl {
    type: left_outer
    relationship: many_to_many
    sql_on: ${arch_campaigns_admin.campaign_group} = ${analyst_notes_scl.target};;
  }
}
