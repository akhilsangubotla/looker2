view: clickstream {
  sql_table_name: ovaledgedb.clickstream ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: clickdate {
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
    sql: ${TABLE}.clickdate ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, user.userid, user.fname, user.lname]
  }
}
