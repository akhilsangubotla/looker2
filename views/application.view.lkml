view: application {
  sql_table_name: ovaledgedb.application ;;
  drill_fields: [applicationid]

  dimension: applicationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.applicationid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: path {
    type: string
    sql: ${TABLE}.path ;;
  }

  measure: count {
    type: count
    drill_fields: [applicationid, name]
  }
}
