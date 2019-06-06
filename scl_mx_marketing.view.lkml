include: "//bc360_marketing/*.view.lkml"

view: scl_mx_marketing {
  view_label: "SCL - Marketing Insights"
  label: "SCL - Marketing"
  extends: [mx_marketing_base]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00002' AND
                ap.agency = 'Fluency';;
  }
}

view: scl_mx_marketing_ppc {
  view_label: "SCL - Marketing Insights"
  label: "SCL - PPC Only"
  extends: [mx_marketing_base]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_marketing

    sql:  SELECT
            mxmmd.*
          FROM flat_mx.mx_marketing_master_hour mxmmd
          LEFT JOIN arch_campaigns.arch_campaigns_base ap USING (adgroup_id)
          LEFT JOIN arch_clients.arch_clients_base ac USING (organization_id)
          WHERE ac.client_id = 'CLIENT-00002' AND
                ap.agency = 'Fluency' AND
                mxmmd.medium = 'PPC';;
  }
}
