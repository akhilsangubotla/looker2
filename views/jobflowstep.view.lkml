view: jobflowstep {
  sql_table_name: ovaledgedb.jobflowstep ;;
  drill_fields: [jobflowstepid]

  dimension: jobflowstepid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobflowstepid ;;
  }

  dimension: externalref {
    type: string
    sql: ${TABLE}.externalref ;;
  }

  dimension: externalrefid {
    type: number
    value_format_name: id
    sql: ${TABLE}.externalrefid ;;
  }

  dimension: jobflowid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobflowid ;;
  }

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: xpos {
    type: string
    sql: ${TABLE}.xpos ;;
  }

  dimension: ypos {
    type: string
    sql: ${TABLE}.ypos ;;
  }

  measure: count {
    type: count
    drill_fields: [jobflowstepid, jobflow.jobflowid, jobflow.name, jobstep.count]
  }
}
