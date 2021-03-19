view: hive_partition_mtdt {
  sql_table_name: ovaledgedb.hive_partition_mtdt ;;

  dimension: hivetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hivetableid ;;
  }

  dimension: partitionfield {
    type: string
    sql: ${TABLE}.partitionfield ;;
  }

  dimension: partitionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.partitionid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
