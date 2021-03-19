view: dataappchart {
  sql_table_name: ovaledgedb.dataappchart ;;
  drill_fields: [dataappchartid]

  dimension: dataappchartid {
    primary_key: yes
    type: number
    sql: ${TABLE}.dataappchartid ;;
  }

  dimension: chartid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.chartid ;;
  }

  dimension: dataappid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.dataappid ;;
  }

  dimension: widgetgrid {
    type: string
    sql: ${TABLE}.widgetgrid ;;
  }

  measure: count {
    type: count
    drill_fields: [dataappchartid, dataapp.dataappid, dataapp.dataappname, chart.chartname, chart.parentchartid]
  }
}
