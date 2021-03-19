view: userfavorite {
  sql_table_name: ovaledgedb.userfavorite ;;
  drill_fields: [userfavoriteid]

  dimension: userfavoriteid {
    primary_key: yes
    type: number
    sql: ${TABLE}.userfavoriteid ;;
  }

  dimension_group: favdate {
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
    sql: ${TABLE}.favdate ;;
  }

  dimension: favname {
    type: string
    sql: ${TABLE}.favname ;;
  }

  dimension: favobj {
    type: string
    sql: ${TABLE}.favobj ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: pinned {
    type: yesno
    sql: ${TABLE}.pinned ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [userfavoriteid, favname, user.userid, user.fname, user.lname]
  }
}
