view: ftpconnectioninfo {
  sql_table_name: ovaledgedb.ftpconnectioninfo ;;

  dimension: connectionname {
    type: string
    sql: ${TABLE}.connectionname ;;
  }

  dimension: ftpconnectionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ftpconnectionid ;;
  }

  dimension: ipaddress {
    type: string
    sql: ${TABLE}.ipaddress ;;
  }

  dimension: operationtype {
    type: string
    sql: ${TABLE}.operationtype ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [connectionname, username]
  }
}
