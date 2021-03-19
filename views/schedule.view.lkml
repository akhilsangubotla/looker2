view: schedule {
  sql_table_name: ovaledgedb.schedule ;;
  drill_fields: [scheduleid]

  dimension: scheduleid {
    primary_key: yes
    type: number
    sql: ${TABLE}.SCHEDULEID ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.ACTIVE ;;
  }

  dimension: classname {
    type: string
    sql: ${TABLE}.CLASSNAME ;;
  }

  dimension: cronentry {
    type: string
    sql: ${TABLE}.CRONENTRY ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: jobflowid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobflowid ;;
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
    sql: ${TABLE}.LASTMODDATE ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.USERID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      scheduleid,
      classname,
      user.userid,
      user.fname,
      user.lname,
      jobflow.jobflowid,
      jobflow.name
    ]
  }
}
