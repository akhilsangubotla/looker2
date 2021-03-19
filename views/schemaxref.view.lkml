view: schemaxref {
  sql_table_name: ovaledgedb.schemaxref ;;
  drill_fields: [schemaxrefid]

  dimension: schemaxrefid {
    primary_key: yes
    type: number
    sql: ${TABLE}.schemaxrefid ;;
  }

  dimension: hiveschemaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hiveschemaid ;;
  }

  dimension: schemaname_hive {
    type: string
    sql: ${TABLE}.schemaname_hive ;;
  }

  measure: count {
    type: count
    drill_fields: [schemaxrefid]
  }
}
