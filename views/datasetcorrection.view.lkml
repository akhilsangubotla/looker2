view: datasetcorrection {
  sql_table_name: ovaledgedb.datasetcorrection ;;
  drill_fields: [datasetcorrectionid]

  dimension: datasetcorrectionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.datasetcorrectionid ;;
  }

  dimension: corrected_query {
    type: string
    sql: ${TABLE}.corrected_query ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [datasetcorrectionid, dataset.datasetid, dataset.datasetname]
  }
}
