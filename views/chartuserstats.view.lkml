view: chartuserstats {
  sql_table_name: ovaledgedb.chartuserstats ;;
  drill_fields: [chartuserstatsid]

  dimension: chartuserstatsid {
    primary_key: yes
    type: number
    sql: ${TABLE}.chartuserstatsid ;;
  }

  dimension: chartid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.chartid ;;
  }

  dimension: chartuserscore {
    type: number
    sql: ${TABLE}.chartuserscore ;;
  }

  dimension: numbercommented {
    type: number
    sql: ${TABLE}.numbercommented ;;
  }

  dimension: numberlooked {
    type: number
    sql: ${TABLE}.numberlooked ;;
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
      chartuserstatsid,
      chart.chartname,
      chart.parentchartid,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
