view: stg_oereportext {
  sql_table_name: ovaledgedb.stg_oereportext ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: businessdescription {
    type: string
    sql: ${TABLE}.businessdescription ;;
  }

  dimension: chartname {
    type: string
    sql: ${TABLE}.chartname ;;
  }

  dimension: chartsql {
    type: string
    sql: ${TABLE}.chartsql ;;
  }

  dimension: connectionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.connectionid ;;
  }

  dimension: detailsql {
    type: string
    sql: ${TABLE}.detailsql ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension: filtersql {
    type: string
    sql: ${TABLE}.filtersql ;;
  }

  dimension: processed_flag {
    type: yesno
    sql: ${TABLE}.processed_flag ;;
  }

  dimension: reportgroup {
    type: string
    sql: ${TABLE}.reportgroup ;;
  }

  measure: count {
    type: count
    drill_fields: [id, chartname]
  }
}
