view: queryuserstats {
  sql_table_name: ovaledgedb.queryuserstats ;;
  drill_fields: [queryuserstatsid]

  dimension: queryuserstatsid {
    primary_key: yes
    type: number
    sql: ${TABLE}.queryuserstatsid ;;
  }

  dimension: datasetid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.datasetid ;;
  }

  dimension: numbercommented {
    type: number
    sql: ${TABLE}.numbercommented ;;
  }

  dimension: numberlooked {
    type: number
    sql: ${TABLE}.numberlooked ;;
  }

  dimension: queryuserscore {
    type: number
    sql: ${TABLE}.queryuserscore ;;
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
      queryuserstatsid,
      dataset.datasetid,
      dataset.datasetname,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
