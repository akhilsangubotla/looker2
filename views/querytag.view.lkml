view: querytag {
  sql_table_name: ovaledgedb.querytag ;;
  drill_fields: [querytagid]

  dimension: querytagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.querytagid ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [querytagid, dataset.datasetid, dataset.datasetname, tags.tagname, tags.parenttagid]
  }
}
