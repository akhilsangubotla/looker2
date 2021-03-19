view: exporttableinfo {
  sql_table_name: ovaledgedb.exporttableinfo ;;

  dimension: columnname {
    type: string
    sql: ${TABLE}.columnname ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: exportableinfoid {
    type: number
    value_format_name: id
    sql: ${TABLE}.exportableinfoid ;;
  }

  dimension: hiveschema {
    type: string
    sql: ${TABLE}.hiveschema ;;
  }

  dimension: hivetable {
    type: string
    sql: ${TABLE}.hivetable ;;
  }

  dimension: jobname {
    type: string
    sql: ${TABLE}.jobname ;;
  }

  dimension: rdbname {
    type: string
    sql: ${TABLE}.rdbname ;;
  }

  dimension: rtablename {
    type: string
    sql: ${TABLE}.rtablename ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rdbname,
      rtablename,
      columnname,
      jobname,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername
    ]
  }
}
