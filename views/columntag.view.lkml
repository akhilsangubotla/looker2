view: columntag {
  sql_table_name: ovaledgedb.columntag ;;
  drill_fields: [columntagid]

  dimension: columntagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.columntagid ;;
  }

  dimension: columnid {
    type: number
    value_format_name: id
    sql: ${TABLE}.columnid ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [columntagid, tags.tagname, tags.parenttagid]
  }
}
