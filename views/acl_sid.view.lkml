view: acl_sid {
  sql_table_name: ovaledgedb.acl_sid ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: principal {
    type: yesno
    sql: ${TABLE}.principal ;;
  }

  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
