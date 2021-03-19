view: hiverelation {
  sql_table_name: ovaledgedb.hiverelation ;;
  drill_fields: [hiverelationid]

  dimension: hiverelationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.hiverelationid ;;
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
    drill_fields: [hiverelationid]
  }
}
