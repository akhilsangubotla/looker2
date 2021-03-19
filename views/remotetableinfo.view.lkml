view: remotetableinfo {
  sql_table_name: ovaledgedb.remotetableinfo ;;
  drill_fields: [remotetableinfoid]

  dimension: remotetableinfoid {
    primary_key: yes
    type: number
    sql: ${TABLE}.remotetableinfoid ;;
  }

  dimension: batchid {
    type: number
    value_format_name: id
    sql: ${TABLE}.batchid ;;
  }

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

  dimension: dbname {
    type: string
    sql: ${TABLE}.dbname ;;
  }

  dimension: hiveschema {
    type: string
    sql: ${TABLE}.hiveschema ;;
  }

  dimension: hivetable {
    type: string
    sql: ${TABLE}.hivetable ;;
  }

  dimension: incrementalthread {
    type: string
    sql: ${TABLE}.incrementalthread ;;
  }

  dimension: incrementedcolumn {
    type: string
    sql: ${TABLE}.incrementedcolumn ;;
  }

  dimension: incrementedvalue {
    type: string
    sql: ${TABLE}.incrementedvalue ;;
  }

  dimension: jobname {
    type: string
    sql: ${TABLE}.jobname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: partitionformat {
    type: string
    sql: ${TABLE}.partitionformat ;;
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
      remotetableinfoid,
      dbname,
      rtablename,
      columnname,
      name,
      jobname,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername
    ]
  }
}
