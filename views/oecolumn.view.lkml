view: oecolumn {
  sql_table_name: ovaledgedb.oecolumn ;;
  drill_fields: [oecolumnid]

  dimension: oecolumnid {
    primary_key: yes
    type: number
    sql: ${TABLE}.oecolumnid ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: beavercolumntype {
    type: string
    sql: ${TABLE}.beavercolumntype ;;
  }

  dimension: columndescription {
    type: string
    sql: ${TABLE}.columndescription ;;
  }

  dimension: columnlength {
    type: number
    sql: ${TABLE}.columnlength ;;
  }

  dimension: columnname {
    type: string
    sql: ${TABLE}.columnname ;;
  }

  dimension: columnposition {
    type: number
    sql: ${TABLE}.columnposition ;;
  }

  dimension: columnscore {
    type: number
    sql: ${TABLE}.columnscore ;;
  }

  dimension: displayeligible {
    type: yesno
    sql: ${TABLE}.displayeligible ;;
  }

  dimension: distinctcount {
    type: number
    sql: ${TABLE}.distinctcount ;;
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

  dimension: mask {
    type: yesno
    sql: ${TABLE}.mask ;;
  }

  dimension: maxval {
    type: string
    sql: ${TABLE}.maxval ;;
  }

  dimension: minval {
    type: string
    sql: ${TABLE}.minval ;;
  }

  dimension: nullcount {
    type: number
    sql: ${TABLE}.nullcount ;;
  }

  dimension: oecolumntype {
    type: string
    sql: ${TABLE}.oecolumntype ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: restricted {
    type: yesno
    sql: ${TABLE}.restricted ;;
  }

  dimension: topvalues {
    type: string
    sql: ${TABLE}.topvalues ;;
  }

  dimension: typestats {
    type: string
    sql: ${TABLE}.typestats ;;
  }

  dimension: usescore {
    type: number
    sql: ${TABLE}.usescore ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      oecolumnid,
      columnname,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      aiassistedtag.count,
      a_oecolumn.count,
      columnpattern.count,
      oecolumntimeline.count
    ]
  }
}
