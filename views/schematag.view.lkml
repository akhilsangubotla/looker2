view: schematag {
  sql_table_name: ovaledgedb.schematag ;;
  drill_fields: [schematagid]

  dimension: schematagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.schematagid ;;
  }

  dimension: oeschemaid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oeschemaid ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [schematagid, oeschema.oeschemaid, oeschema.schemaname, tags.tagname, tags.parenttagid]
  }
}
