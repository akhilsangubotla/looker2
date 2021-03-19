view: user_role {
  sql_table_name: ovaledgedb.user_role ;;

  dimension: roleid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.ROLEID ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.USERID ;;
  }

  measure: count {
    type: count
    drill_fields: [user.userid, user.fname, user.lname, roles.roleid]
  }
}
