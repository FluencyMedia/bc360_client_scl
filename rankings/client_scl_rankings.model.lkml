include: "//bc360_admin/**/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/**/*.view.lkml"
include: "//bc360_services/**/*.view.lkml"
include: "//bc360_campaigns/**/*.view.lkml"
include: "//bc360_rankings/**/*.view.lkml"

include: "/**/*.view.lkml"

persist_with: dg_bc360_rankings

label: "SCL Health"

explore: scl_rankings_all {
  from: arch_terms_base
  label: "SCL - Rankings [All]"

  join: scl_mx_rankings_all {
    type: left_outer
    relationship: many_to_many
    sql_on: ${scl_rankings_all.search_term} = ${scl_mx_rankings_all.search_term} AND
            ${scl_rankings_all.scan_month} = ${scl_mx_rankings_all.scan_month};;
  }

  join: location_meta {
    type: left_outer
    relationship: many_to_one
    sql_on: ${location_meta.location} = ${scl_mx_rankings_all.location} ;;
  }

  join: analyst_notes_scl {}
}

explore: scl_rankings_scl {
  from: arch_terms_base
  label: "SCL - Rankings [SCL]"

  join: scl_mx_rankings_scl {
    type: left_outer
    relationship: many_to_many
    sql_on: ${scl_rankings_scl.search_term} = ${scl_mx_rankings_scl.search_term} AND
            ${scl_rankings_scl.scan_month} = ${scl_mx_rankings_scl.scan_month};;
  }

  join: location_meta {
    type: left_outer
    relationship: many_to_one
    sql_on: ${location_meta.location} = ${scl_mx_rankings_scl.location} ;;
  }
}
