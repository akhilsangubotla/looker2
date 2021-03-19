view: datasource {
  sql_table_name: ovaledgedb.datasource ;;
  drill_fields: [datasourceid]

  dimension: datasourceid {
    primary_key: yes
    type: number
    sql: ${TABLE}.DATASOURCEID ;;
  }

  dimension: datasourcename {
    type: string
    sql: ${TABLE}.DATASOURCENAME ;;
  }

  dimension: driverclassname {
    type: string
    sql: ${TABLE}.DRIVERCLASSNAME ;;
  }

  dimension: pwd {
    type: string
    sql: ${TABLE}.PWD ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.USERNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [datasourceid, username, driverclassname, datasourcename]
  }
}
