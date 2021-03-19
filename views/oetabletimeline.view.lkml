view: oetabletimeline {
  sql_table_name: ovaledgedb.oetabletimeline ;;
  drill_fields: [oetabletimelineid]

  dimension: oetabletimelineid {
    primary_key: yes
    type: number
    sql: ${TABLE}.oetabletimelineid ;;
  }

  dimension_group: lastanalyzeddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lastanalyzeddate ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: rowcount {
    type: number
    sql: ${TABLE}.rowcount ;;
  }

  dimension: tablescore {
    type: number
    sql: ${TABLE}.tablescore ;;
  }

  dimension: usescore {
    type: number
    sql: ${TABLE}.usescore ;;
  }

  measure: count {
    type: count
    drill_fields: [oetabletimelineid, oetable.oetableid, oetable.tablename, oetable.filename, oecolumntimeline.count]
  }
}
