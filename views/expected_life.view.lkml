view: expected_life {
  sql_table_name: `looker-private-demo.canada_infra.expected_life`
    ;;

  dimension: avg_age {
    type: number
    sql: ${TABLE}.AVG_AGE ;;
  }

  dimension: bridge_and_tunnel_assets {
    type: string
    sql: ${TABLE}.Bridge_and_tunnel_assets ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.GEO ;;
  }

  dimension: ref_date {
    type: string
    sql: ${TABLE}.REF_DATE ;;
  }

  dimension: scalar_factor {
    type: string
    sql: ${TABLE}.SCALAR_FACTOR ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: terminated {
    type: string
    sql: ${TABLE}.TERMINATED ;;
  }

  dimension: type_municipality_population {
    type: string
    sql: ${TABLE}.Type_Municipality_Population ;;
  }

  dimension: uom {
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: average_age {
    type: average
    value_format: "000.00"
    sql: ${TABLE}.AVG_AGE ;;
  }
}
