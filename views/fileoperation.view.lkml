view: fileoperation {
  sql_table_name: ovaledgedb.fileoperation ;;
  drill_fields: [fileoperationid]

  dimension: fileoperationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.fileoperationid ;;
  }

  dimension: destloc {
    type: string
    sql: ${TABLE}.destloc ;;
  }

  dimension: desttype {
    type: string
    sql: ${TABLE}.desttype ;;
  }

  dimension_group: lastmoddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastmoddate ;;
  }

  dimension: operationname {
    type: string
    sql: ${TABLE}.operationname ;;
  }

  dimension: operationtype {
    type: string
    sql: ${TABLE}.operationtype ;;
  }

  dimension: sourceloc {
    type: string
    sql: ${TABLE}.sourceloc ;;
  }

  dimension: sourcetype {
    type: string
    sql: ${TABLE}.sourcetype ;;
  }

  measure: count {
    type: count
    drill_fields: [fileoperationid, operationname]
  }
}
