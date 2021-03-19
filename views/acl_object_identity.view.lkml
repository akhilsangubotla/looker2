view: acl_object_identity {
  sql_table_name: ovaledgedb.acl_object_identity ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: entries_inheriting {
    type: yesno
    sql: ${TABLE}.entries_inheriting ;;
  }

  dimension: object_id_class {
    type: number
    value_format_name: id
    sql: ${TABLE}.object_id_class ;;
  }

  dimension: object_id_identity {
    type: number
    value_format_name: id
    sql: ${TABLE}.object_id_identity ;;
  }

  dimension: owner_sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.owner_sid ;;
  }

  dimension: parent_object {
    type: number
    sql: ${TABLE}.parent_object ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
