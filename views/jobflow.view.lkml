view: jobflow {
  sql_table_name: ovaledgedb.jobflow ;;
  drill_fields: [jobflowid]

  dimension: jobflowid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobflowid ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: lastjobid {
    type: number
    value_format_name: id
    sql: ${TABLE}.lastjobid ;;
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

  dimension: notifyonerror {
    type: yesno
    sql: ${TABLE}.notifyonerror ;;
  }

  dimension: notifyonsuccess {
    type: yesno
    sql: ${TABLE}.notifyonsuccess ;;
  }

  dimension: projectid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.projectid ;;
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
      jobflowid,
      name,
      user.userid,
      user.fname,
      user.lname,
      project.projectid,
      project.projectname,
      job.count,
      jobflowstep.count,
      jobflow_expert.count,
      schedule.count
    ]
  }
}
