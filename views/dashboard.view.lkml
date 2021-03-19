view: dashboard {
  sql_table_name: ovaledgedb.dashboard ;;
  drill_fields: [dashboardid]

  dimension: dashboardid {
    primary_key: yes
    type: number
    sql: ${TABLE}.DASHBOARDID ;;
  }

  dimension: dashboard_name {
    type: string
    sql: ${TABLE}.DASHBOARD_NAME ;;
  }

  dimension: widget_grid {
    type: string
    sql: ${TABLE}.WIDGET_GRID ;;
  }

  measure: count {
    type: count
    drill_fields: [dashboardid, dashboard_name]
  }
}
