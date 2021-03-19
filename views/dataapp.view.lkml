view: dataapp {
  sql_table_name: ovaledgedb.dataapp ;;
  drill_fields: [dataappid]

  dimension: dataappid {
    primary_key: yes
    type: number
    sql: ${TABLE}.DATAAPPID ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension_group: createdate {
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
    sql: ${TABLE}.CREATEDATE ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}.CREATEDBY ;;
  }

  dimension: dataappname {
    type: string
    sql: ${TABLE}.DATAAPPNAME ;;
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

  dimension: reportid {
    type: number
    value_format_name: id
    sql: ${TABLE}.REPORTID ;;
  }

  measure: count {
    type: count
    drill_fields: [dataappid, dataappname, dataappchart.count]
  }
}
