view: jobstepthreadstatus {
  sql_table_name: ovaledgedb.jobstepthreadstatus ;;
  drill_fields: [jobstepthreadstatusid]

  dimension: jobstepthreadstatusid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobstepthreadstatusid ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: threadnumber {
    type: number
    sql: ${TABLE}.threadnumber ;;
  }

  measure: count {
    type: count
    drill_fields: [jobstepthreadstatusid, jobstep.jobstepid, jobstep.jobstepname]
  }
}
