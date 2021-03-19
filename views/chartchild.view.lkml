view: chartchild {
  sql_table_name: ovaledgedb.chartchild ;;
  drill_fields: [chartchildid]

  dimension: chartchildid {
    primary_key: yes
    type: number
    sql: ${TABLE}.chartchildid ;;
  }

  dimension: chartid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.chartid ;;
  }

  dimension: childname {
    type: string
    sql: ${TABLE}.childname ;;
  }

  dimension: childtype {
    type: string
    sql: ${TABLE}.childtype ;;
  }

  measure: count {
    type: count
    drill_fields: [chartchildid, childname, chart.chartname, chart.parentchartid]
  }
}
