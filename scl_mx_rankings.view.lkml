include: "//bc360_rankings/**/*.view.lkml"

view: scl_mx_rankings_all {
  extends: [mx_rankings_core]

  derived_table: {
    datagroup_trigger: dg_bc360_rankings

    sql: SELECT
            ROW_NUMBER() OVER () row_index,
            *
          FROM `bc360-main.mx_rankings.mx_rankings_core`
          WHERE location LIKE "%, co" OR location LIKE "%, mt";;
  }

  dimension: row_index {
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.row_index ;;
  }
}

view: scl_mx_rankings_scl {
  extends: [scl_mx_rankings_all]

  derived_table: {
    datagroup_trigger: dg_bc360_rankings

    sql: SELECT
            ROW_NUMBER() OVER () row_index,
            *
          FROM `bc360-main.mx_rankings.mx_rankings_core`
          WHERE domain LIKE "%sclhealth%";;
  }

  dimension: row_index {
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.row_index ;;
  }
}
