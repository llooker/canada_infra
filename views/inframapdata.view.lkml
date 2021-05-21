view: inframapdata {
  sql_table_name: `looker-private-demo.canada_infra.inframapdata`
    ;;

  dimension: contribution_federal {
    type: number
    sql: ${TABLE}.Contribution_Federal ;;
  }

  dimension: delivery_department_agency {
    type: string
    sql: ${TABLE}.Delivery_Department_Agency ;;
  }

  dimension: estimated_start_date {
    type: string
    sql: ${TABLE}.Estimated_Start_Date ;;
  }

  dimension: estimated_total_cost {
    type: number
    sql: ${TABLE}.Estimated_Total_Cost ;;
  }

  dimension: expected_result {
    type: string
    sql: ${TABLE}.Expected_Result ;;
  }

  dimension: federal_contribution {
    type: number
    sql: ${TABLE}.Federal_Contribution ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }
  dimension: project_location {
    type: location
    sql_latitude: ${TABLE}.Latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
    }

  dimension: municipality {
    type: string
    sql: ${TABLE}.Municipality ;;
  }

  dimension: percent_funded {
    type: number
    sql: ${TABLE}.Percent_Funded ;;
  }

  dimension: program_name {
    type: string
    sql: ${TABLE}.Program_Name ;;
  }

  dimension: project_description {
    type: string
    sql: ${TABLE}.Project_Description ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.Province ;;
  }

  dimension: stdev_contribution {
    type: number
    sql: ${TABLE}.STDEV_Contribution ;;
  }

  dimension: stream {
    type: string
    sql: ${TABLE}.Stream ;;
  }

 # dimension: total_cost_estimated {
#    type: number
 #   sql: ${TABLE}.Total_Cost_Estimated ;;
#  }

  dimension: ultimate_recipient_name {
    type: string
    sql: ${TABLE}.Ultimate_Recipient_Name ;;
  }

  dimension: ultimate_recipient_type {
    type: string
    sql: ${TABLE}.Ultimate_Recipient_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [ultimate_recipient_name, project_name, program_name]
  }
  measure: total_cost_estimated {
    type: sum
    value_format: "$#,##0"
    drill_fields: [project_name, program_name,delivery_department_agency,contribution_federal,count]
    link: {
      label: "Drill to costs details"
      url: "https://googlecloud.looker.com/dashboards/690?Province=&filter_config=%7B%22Province%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:2%7D%5D%7D"
    }
  }
  measure: federal_contribution_total {
    type: sum
    sql: ${TABLE}.Federal_Contribution ;;
    value_format:"$#,##0"
    drill_fields: [project_name, program_name,delivery_department_agency,contribution_federal,count,estimated_start_date,estimated_total_cost,federal_contribution]
  }
  measure: funded_percentage {
    type: average
    value_format: "##.#"
    sql: ${TABLE}.Percent_Funded ;;
  }
  }
