view: discovery {
  sql_table_name: ovaledgedb.discovery ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.DATASETID ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: transformsteps {
    type: string
    sql: ${TABLE}.transformsteps ;;
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
      id,
      name,
      user.userid,
      user.fname,
      user.lname,
      dataset.datasetid,
      dataset.datasetname
    ]
  }
}
