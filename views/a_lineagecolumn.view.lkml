view: a_lineagecolumn {
  sql_table_name: ovaledgedb.a_lineagecolumn ;;

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

  dimension_group: deletedate {
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
    sql: ${TABLE}.deletedate ;;
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

  dimension: lineagecolumnid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.lineagecolumnid ;;
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
    drill_fields: [lineagecolumn.lineagecolumnid, lineage.lineageid]
  }
}
