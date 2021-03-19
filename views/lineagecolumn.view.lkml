view: lineagecolumn {
  sql_table_name: ovaledgedb.lineagecolumn ;;
  drill_fields: [lineagecolumnid]

  dimension: lineagecolumnid {
    primary_key: yes
    type: number
    sql: ${TABLE}.lineagecolumnid ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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

  dimension: destinationcolumnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.destinationcolumnid ;;
  }

  dimension: destinationcolumntype {
    type: string
    sql: ${TABLE}.destinationcolumntype ;;
  }

  dimension: lastmoduser {
    type: string
    sql: ${TABLE}.lastmoduser ;;
  }

  dimension: lineageid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.lineageid ;;
  }

  dimension: sourcecolumnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sourcecolumnid ;;
  }

  dimension: sourcecolumntype {
    type: string
    sql: ${TABLE}.sourcecolumntype ;;
  }

  measure: count {
    type: count
    drill_fields: [lineagecolumnid, lineage.lineageid, a_lineagecolumn.count]
  }
}
