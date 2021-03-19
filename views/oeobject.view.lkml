view: oeobject {
  sql_table_name: ovaledgedb.oeobject ;;
  drill_fields: [oeobjectid]

  dimension: oeobjectid {
    primary_key: yes
    type: number
    sql: ${TABLE}.oeobjectid ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
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

  dimension: objectname {
    type: string
    sql: ${TABLE}.objectname ;;
  }

  dimension: oeschemaid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oeschemaid ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [oeobjectid, objectname, oeschema.oeschemaid, oeschema.schemaname]
  }
}
