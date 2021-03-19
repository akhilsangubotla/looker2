view: a_oeschema {
  sql_table_name: ovaledgedb.a_oeschema ;;

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: inaudit {
    type: yesno
    sql: ${TABLE}.inaudit ;;
  }

  dimension_group: lastmetasyncdate {
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
    sql: ${TABLE}.lastmetasyncdate ;;
  }

  dimension: oeschemaid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oeschemaid ;;
  }

  dimension: schemaname {
    type: string
    sql: ${TABLE}.schemaname ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      schemaname,
      oeschema.oeschemaid,
      oeschema.schemaname,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername
    ]
  }
}
