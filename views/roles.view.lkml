view: roles {
  sql_table_name: ovaledgedb.roles ;;
  drill_fields: [roleid]

  dimension: roleid {
    primary_key: yes
    type: number
    sql: ${TABLE}.ROLEID ;;
  }

  dimension: authority {
    type: string
    sql: ${TABLE}.AUTHORITY ;;
  }

  dimension: indexingquota {
    type: number
    sql: ${TABLE}.indexingquota ;;
  }

  dimension: mrprocessingquota {
    type: number
    sql: ${TABLE}.mrprocessingquota ;;
  }

  dimension: sqlprocessingquota {
    type: number
    sql: ${TABLE}.sqlprocessingquota ;;
  }

  measure: count {
    type: count
    drill_fields: [roleid, user_role.count]
  }
}
