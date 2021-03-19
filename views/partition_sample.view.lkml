view: partition_sample {
  sql_table_name: ovaledgedb.partition_sample ;;

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonID ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
