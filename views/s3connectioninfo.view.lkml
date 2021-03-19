view: s3connectioninfo {
  sql_table_name: ovaledgedb.s3connectioninfo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accesskey {
    type: string
    sql: ${TABLE}.accesskey ;;
  }

  dimension: secratekey {
    type: string
    sql: ${TABLE}.secratekey ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
