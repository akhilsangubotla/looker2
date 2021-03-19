view: jobflow_expert {
  sql_table_name: ovaledgedb.jobflow_expert ;;

  dimension: expertid {
    type: number
    value_format_name: id
    sql: ${TABLE}.expertid ;;
  }

  dimension: jobflowid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobflowid ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [user.userid, user.fname, user.lname, jobflow.jobflowid, jobflow.name]
  }
}
