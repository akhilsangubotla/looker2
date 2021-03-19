view: tableuserstats {
  sql_table_name: ovaledgedb.tableuserstats ;;
  drill_fields: [tableuserstatsid]

  dimension: tableuserstatsid {
    primary_key: yes
    type: number
    sql: ${TABLE}.tableuserstatsid ;;
  }

  dimension: numbercommented {
    type: number
    sql: ${TABLE}.numbercommented ;;
  }

  dimension: numberlooked {
    type: number
    sql: ${TABLE}.numberlooked ;;
  }

  dimension: numberqueried {
    type: number
    sql: ${TABLE}.numberqueried ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: tableuserscore {
    type: number
    sql: ${TABLE}.tableuserscore ;;
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
      tableuserstatsid,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
