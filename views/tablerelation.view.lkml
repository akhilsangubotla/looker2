view: tablerelation {
  sql_table_name: ovaledgedb.tablerelation ;;
  drill_fields: [tablerelationid]

  dimension: tablerelationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.tablerelationid ;;
  }

  dimension: disabled {
    type: yesno
    sql: ${TABLE}.disabled ;;
  }

  dimension: leftpkfkscore {
    type: number
    sql: ${TABLE}.leftpkfkscore ;;
  }

  dimension: lefttableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.lefttableid ;;
  }

  dimension: manuallyupdated {
    type: yesno
    sql: ${TABLE}.manuallyupdated ;;
  }

  dimension: rightpkfkscore {
    type: number
    sql: ${TABLE}.rightpkfkscore ;;
  }

  dimension: righttableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.righttableid ;;
  }

  dimension: similarityscore {
    type: number
    sql: ${TABLE}.similarityscore ;;
  }

  measure: count {
    type: count
    drill_fields: [tablerelationid]
  }
}
