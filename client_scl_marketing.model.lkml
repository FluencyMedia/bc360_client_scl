include: "//bc360_admin/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/*.view.lkml"
include: "//bc360_services/*.view.lkml"
include: "//bc360_campaigns/*.view.lkml"
include: "//bc360_outcomes/*.view.lkml"
include: "//bc360_marketing/*.view.lkml"
# include: "//bc360_users/*.view.lkml"



view: scl_mx_marketing {
  view_label: "SCL - Marketing Insights"
  extends: [mx_marketing_base]

  derived_table: {
    datagroup_trigger: dg_bc360_bq

    sql:  SELECT
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00002' AND
                ap.agency = 'Fluency';;
  }
}
