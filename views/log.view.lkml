view: log {
  sql_table_name: ovaledgedb.log ;;
  drill_fields: [logid]

  dimension: logid {
    primary_key: yes
    type: number
    sql: ${TABLE}.logid ;;
  }

  dimension: jobid {
    type: string
    # hidden: yes
    sql: ${TABLE}.jobid ;;
  }

  dimension_group: logdate {
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
    sql: ${TABLE}.logdate ;;
  }

  dimension: logtext {
    type: string
    sql: ${TABLE}.logtext ;;
  }

  measure: count {
    type: count
    drill_fields: [logid, job.jobid, job.name]
  }
}
