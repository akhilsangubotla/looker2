view: jobstep {
  sql_table_name: ovaledgedb.jobstep ;;
  drill_fields: [jobstepid]

  dimension: jobstepid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobstepid ;;
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

  dimension: extjobid {
    type: string
    sql: ${TABLE}.extjobid ;;
  }

  dimension: internalreferenceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.internalreferenceid ;;
  }

  dimension: internalreferencetype {
    type: string
    sql: ${TABLE}.internalreferencetype ;;
  }

  dimension: jobflowstepid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobflowstepid ;;
  }

  dimension: jobid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobid ;;
  }

  dimension: jobstepname {
    type: string
    sql: ${TABLE}.jobstepname ;;
  }

  dimension: jobsteporder {
    type: number
    sql: ${TABLE}.jobsteporder ;;
  }

  dimension: jobtype {
    type: string
    sql: ${TABLE}.jobtype ;;
  }

  dimension_group: lastrundate {
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
    sql: ${TABLE}.lastrundate ;;
  }

  dimension: multipredecessor {
    type: yesno
    sql: ${TABLE}.multipredecessor ;;
  }

  dimension: multipredecessorid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.multipredecessorid ;;
  }

  dimension: predecessor {
    type: number
    sql: ${TABLE}.predecessor ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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
      jobstepid,
      jobstepname,
      multipredecessor.multipredecessorid,
      job.jobid,
      job.name,
      user.userid,
      user.fname,
      user.lname,
      jobflowstep.jobflowstepid,
      jobstepmultithread.count,
      jobstepthreadstatus.count,
      jobstepvar.count,
      multipredecessor.count
    ]
  }
}
