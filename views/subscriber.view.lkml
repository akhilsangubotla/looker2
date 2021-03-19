view: subscriber {
  sql_table_name: ovaledgedb.subscriber ;;
  drill_fields: [subscriberid]

  dimension: subscriberid {
    primary_key: yes
    type: number
    sql: ${TABLE}.SUBSCRIBERID ;;
  }

  dimension: chartid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.CHARTID ;;
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
      subscriberid,
      chart.chartname,
      chart.parentchartid,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
