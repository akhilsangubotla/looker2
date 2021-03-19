view: acl_class {
  sql_table_name: ovaledgedb.acl_class ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
