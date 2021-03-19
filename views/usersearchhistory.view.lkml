view: usersearchhistory {
  sql_table_name: ovaledgedb.usersearchhistory ;;
  drill_fields: [usersearchhistoryid]

  dimension: usersearchhistoryid {
    primary_key: yes
    type: number
    sql: ${TABLE}.usersearchhistoryid ;;
  }

  dimension: displayval {
    type: string
    sql: ${TABLE}.displayval ;;
  }

  dimension_group: lastsearchdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastsearchdate ;;
  }

  dimension: objid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objid ;;
  }

  dimension: searchobj {
    type: string
    sql: ${TABLE}.searchobj ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [usersearchhistoryid, user.userid, user.fname, user.lname]
  }
}
