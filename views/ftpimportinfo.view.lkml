view: ftpimportinfo {
  sql_table_name: ovaledgedb.ftpimportinfo ;;

  dimension: batchid {
    type: number
    value_format_name: id
    sql: ${TABLE}.batchid ;;
  }

  dimension: destconnectioninfoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.destconnectioninfoid ;;
  }

  dimension: destpath {
    type: string
    sql: ${TABLE}.destpath ;;
  }

  dimension: ftpconnectionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ftpconnectionid ;;
  }

  dimension: ftpinfoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ftpinfoid ;;
  }

  dimension: ftppath {
    type: string
    sql: ${TABLE}.ftppath ;;
  }

  dimension: jobname {
    type: string
    sql: ${TABLE}.jobname ;;
  }

  measure: count {
    type: count
    drill_fields: [jobname]
  }
}
