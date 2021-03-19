view: audit {
  sql_table_name: ovaledgedb.audit ;;
  drill_fields: [auditid]

  dimension: auditid {
    primary_key: yes
    type: number
    sql: ${TABLE}.auditid ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  measure: count {
    type: count
    drill_fields: [auditid]
  }
}
