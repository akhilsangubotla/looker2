view: tableendorsement {
  sql_table_name: ovaledgedb.tableendorsement ;;
  drill_fields: [tableendorsementid]

  dimension: tableendorsementid {
    primary_key: yes
    type: number
    sql: ${TABLE}.tableendorsementid ;;
  }

  dimension: endorsementtype {
    type: string
    sql: ${TABLE}.endorsementtype ;;
  }

  dimension_group: lastmoddate {
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
    sql: ${TABLE}.lastmoddate ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
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
      tableendorsementid,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      user.userid,
      user.fname,
      user.lname
    ]
  }
}
