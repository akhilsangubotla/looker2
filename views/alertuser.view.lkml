view: alertuser {
  sql_table_name: ovaledgedb.alertuser ;;
  drill_fields: [alertuserid]

  dimension: alertuserid {
    primary_key: yes
    type: number
    sql: ${TABLE}.alertuserid ;;
  }

  dimension: alertid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.alertid ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      alertuserid,
      alert.alertid,
      alert.alertname,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
