view: a_datasetassociation {
  sql_table_name: ovaledgedb.a_datasetassociation ;;

  dimension: assobject {
    type: string
    sql: ${TABLE}.assobject ;;
  }

  dimension: assobjectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.assobjectid ;;
  }

  dimension: datasetassociationid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetassociationid ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension_group: deletedate {
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
    sql: ${TABLE}.deletedate ;;
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
    drill_fields: [datasetassociation.datasetassociationid, dataset.datasetid, dataset.datasetname]
  }
}
