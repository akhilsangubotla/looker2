view: aiassistedtag {
  sql_table_name: ovaledgedb.aiassistedtag ;;
  drill_fields: [aiassistedtagid]

  dimension: aiassistedtagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.aiassistedtagid ;;
  }

  dimension: guessscore {
    type: number
    sql: ${TABLE}.guessscore ;;
  }

  dimension: oecolumnid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oecolumnid ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.tagid ;;
  }

  dimension: userinputid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userinputid ;;
  }

  measure: count {
    type: count
    drill_fields: [aiassistedtagid, tags.tagname, tags.parenttagid, oecolumn.oecolumnid, oecolumn.columnname]
  }
}
