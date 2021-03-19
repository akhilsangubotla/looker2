view: job {
  sql_table_name: ovaledgedb.job ;;
  drill_fields: [jobid]

  dimension: jobid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobid ;;
  }

  dimension_group: createdate {
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
    sql: ${TABLE}.createdate ;;
  }

  dimension: jobflowid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobflowid ;;
  }

  dimension: jobstatus {
    type: string
    sql: ${TABLE}.jobstatus ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      jobid,
      name,
      user.userid,
      user.fname,
      user.lname,
      jobflow.jobflowid,
      jobflow.name,
      jobstep.count,
      log.count
    ]
  }
}
