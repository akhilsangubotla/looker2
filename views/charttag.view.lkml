view: charttag {
  sql_table_name: ovaledgedb.charttag ;;
  drill_fields: [charttagid]

  dimension: charttagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.CHARTTAGID ;;
  }

  dimension: chartid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.CHARTID ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [charttagid, chart.chartname, chart.parentchartid, tags.tagname, tags.parenttagid]
  }
}
