view: connectioninfoadnl {
  sql_table_name: ovaledgedb.connectioninfoadnl ;;
  drill_fields: [connectioninfoadnlid]

  dimension: connectioninfoadnlid {
    primary_key: yes
    type: number
    sql: ${TABLE}.connectioninfoadnlid ;;
  }

  dimension: ckey {
    type: string
    sql: ${TABLE}.ckey ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: cvalue {
    type: string
    sql: ${TABLE}.cvalue ;;
  }

  measure: count {
    type: count
    drill_fields: [connectioninfoadnlid, connectioninfo.connectioninfoid, connectioninfo.username, connectioninfo.name, connectioninfo.drivername]
  }
}
