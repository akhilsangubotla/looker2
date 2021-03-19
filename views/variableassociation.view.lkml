view: variableassociation {
  sql_table_name: ovaledgedb.variableassociation ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: associatedatasetid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ASSOCIATEDATASETID ;;
  }

  dimension: associatefield {
    type: string
    sql: ${TABLE}.ASSOCIATEFIELD ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.DATASETID ;;
  }

  dimension: variablename {
    type: string
    sql: ${TABLE}.VARIABLENAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, variablename, dataset.datasetid, dataset.datasetname]
  }
}
