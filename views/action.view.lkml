view: action {
  sql_table_name: ovaledgedb.action ;;
  drill_fields: [actionid]

  dimension: actionid {
    primary_key: yes
    type: number
    sql: ${TABLE}.actionid ;;
  }

  dimension: actiondescription {
    type: string
    sql: ${TABLE}.actiondescription ;;
  }

  dimension: actionname {
    type: string
    sql: ${TABLE}.actionname ;;
  }

  measure: count {
    type: count
    drill_fields: [actionid, actionname, action2.count]
  }
}
