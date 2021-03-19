view: action2 {
  sql_table_name: ovaledgedb.action2 ;;

  dimension: actiondescription {
    type: string
    sql: ${TABLE}.actiondescription ;;
  }

  dimension: actionid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.actionid ;;
  }

  dimension: actionname {
    type: string
    sql: ${TABLE}.actionname ;;
  }

  measure: count {
    type: count
    drill_fields: [actionname, action.actionid, action.actionname]
  }
}
