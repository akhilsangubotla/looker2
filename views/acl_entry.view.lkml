view: acl_entry {
  sql_table_name: ovaledgedb.acl_entry ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ace_order {
    type: number
    sql: ${TABLE}.ace_order ;;
  }

  dimension: acl_object_identity {
    type: number
    value_format_name: id
    sql: ${TABLE}.acl_object_identity ;;
  }

  dimension: audit_failure {
    type: yesno
    sql: ${TABLE}.audit_failure ;;
  }

  dimension: audit_success {
    type: yesno
    sql: ${TABLE}.audit_success ;;
  }

  dimension: granting {
    type: yesno
    sql: ${TABLE}.granting ;;
  }

  dimension: mask {
    type: number
    sql: ${TABLE}.mask ;;
  }

  dimension: sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
