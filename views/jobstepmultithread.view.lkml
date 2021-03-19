view: jobstepmultithread {
  sql_table_name: ovaledgedb.jobstepmultithread ;;
  drill_fields: [jobstepmultithreadid]

  dimension: jobstepmultithreadid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobstepmultithreadid ;;
  }

  dimension: jobstepid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobstepid ;;
  }

  dimension_group: lastupdatedate {
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
    sql: ${TABLE}.lastupdatedate ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
  }

  dimension: objecttype {
    type: number
    sql: ${TABLE}.objecttype ;;
  }

  dimension: threadnumber {
    type: number
    sql: ${TABLE}.threadnumber ;;
  }

  measure: count {
    type: count
    drill_fields: [jobstepmultithreadid, jobstep.jobstepid, jobstep.jobstepname]
  }
}
