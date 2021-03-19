view: alert {
  sql_table_name: ovaledgedb.alert ;;
  drill_fields: [alertid]

  dimension: alertid {
    primary_key: yes
    type: number
    sql: ${TABLE}.alertid ;;
  }

  dimension: alertname {
    type: string
    sql: ${TABLE}.alertname ;;
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

  dimension: createdby {
    type: string
    sql: ${TABLE}.createdby ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: helptext {
    type: string
    sql: ${TABLE}.helptext ;;
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

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  measure: count {
    type: count
    drill_fields: [alertid, alertname, dataset.datasetid, dataset.datasetname, alertuser.count]
  }
}
