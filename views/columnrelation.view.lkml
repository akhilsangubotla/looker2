view: columnrelation {
  sql_table_name: ovaledgedb.columnrelation ;;
  drill_fields: [columnrelationid]

  dimension: columnrelationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.columnrelationid ;;
  }

  dimension: disabled {
    type: yesno
    sql: ${TABLE}.disabled ;;
  }

  dimension: leftcolumnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.leftcolumnid ;;
  }

  dimension: leftmatchcount {
    type: number
    sql: ${TABLE}.leftmatchcount ;;
  }

  dimension: manuallyupdated {
    type: yesno
    sql: ${TABLE}.manuallyupdated ;;
  }

  dimension: mediumadded {
    type: yesno
    sql: ${TABLE}.mediumadded ;;
  }

  dimension: rightcolumnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.rightcolumnid ;;
  }

  dimension: rightmatchcount {
    type: number
    sql: ${TABLE}.rightmatchcount ;;
  }

  dimension: uniquematchcount {
    type: number
    sql: ${TABLE}.uniquematchcount ;;
  }

  measure: count {
    type: count
    drill_fields: [columnrelationid]
  }
}
