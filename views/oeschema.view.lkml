view: oeschema {
  sql_table_name: ovaledgedb.oeschema ;;
  drill_fields: [oeschemaid]

  dimension: oeschemaid {
    primary_key: yes
    type: number
    sql: ${TABLE}.oeschemaid ;;
  }

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

  dimension: crawled {
    type: yesno
    sql: ${TABLE}.crawled ;;
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
      oeschemaid,
      schemaname,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername,
      a_oeschema.count,
      a_oetable.count,
      oeobject.count,
      oetable.count,
      schematag.count
    ]
  }
}
