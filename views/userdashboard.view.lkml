view: userdashboard {
  sql_table_name: ovaledgedb.userdashboard ;;
  drill_fields: [userdashboardid]

  dimension: userdashboardid {
    primary_key: yes
    type: number
    sql: ${TABLE}.USERDASHBOARDID ;;
  }

  dimension: dashboard_dashboardid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DASHBOARD_DASHBOARDID ;;
  }

  dimension: defaultdash {
    type: yesno
    sql: ${TABLE}.DEFAULTDASH ;;
  }

  dimension: user_userid {
    type: string
    sql: ${TABLE}.USER_USERID ;;
  }

  measure: count {
    type: count
    drill_fields: [userdashboardid]
  }
}
