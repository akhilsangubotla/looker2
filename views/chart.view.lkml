view: chart {
  sql_table_name: ovaledgedb.chart ;;
  drill_fields: [parentchartid]

  dimension: parentchartid {
    primary_key: yes
    type: number
    sql: ${TABLE}.parentchartid ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: chartid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.CHARTID ;;
  }

  dimension: chartname {
    type: string
    sql: ${TABLE}.CHARTNAME ;;
  }

  dimension: chartscore {
    type: number
    sql: ${TABLE}.chartscore ;;
  }

  dimension: charttype {
    type: string
    sql: ${TABLE}.CHARTTYPE ;;
  }

  dimension: colnametypemap {
    type: string
    sql: ${TABLE}.COLNAMETYPEMAP ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}.CREATEDBY ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: domainid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.DOMAINID ;;
  }

  dimension: extreferenceid {
    type: string
    sql: ${TABLE}.extreferenceid ;;
  }

  dimension: genre {
    type: string
    sql: ${TABLE}.GENRE ;;
  }

  dimension_group: lastmoddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LASTMODDATE ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.OPTIONS ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.OWNER ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  dimension: usescore {
    type: number
    sql: ${TABLE}.USESCORE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      parentchartid,
      chartname,
      chart.chartname,
      chart.parentchartid,
      dataset.datasetid,
      dataset.datasetname,
      domain.domainid,
      chart.count,
      chartchild.count,
      charttag.count,
      chartuserstats.count,
      dataappchart.count,
      subscriber.count
    ]
  }
}
