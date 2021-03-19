view: datastorytag {
  sql_table_name: ovaledgedb.datastorytag ;;

  dimension: storyid {
    type: number
    value_format_name: id
    sql: ${TABLE}.STORYID ;;
  }

  dimension: storytagid {
    type: number
    value_format_name: id
    sql: ${TABLE}.STORYTAGID ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [tags.tagname, tags.parenttagid]
  }
}
