view: datasetassociation {
  sql_table_name: ovaledgedb.datasetassociation ;;
  drill_fields: [datasetassociationid]

  dimension: datasetassociationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.datasetassociationid ;;
  }

  dimension: assobject {
    type: string
    sql: ${TABLE}.assobject ;;
  }

  dimension: assobjectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assobjectid ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension_group: lastmetasyncdate {
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
    sql: ${TABLE}.lastmetasyncdate ;;
  }

  measure: count {
    type: count
    drill_fields: [datasetassociationid, dataset.datasetid, dataset.datasetname, a_datasetassociation.count]
  }
}
