view: filetag {
  sql_table_name: ovaledgedb.filetag ;;
  drill_fields: [filetagid]

  dimension: filetagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.filetagid ;;
  }

  dimension: fileid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.fileid ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [filetagid, file.fileid, file.filename, tags.tagname, tags.parenttagid]
  }
}
