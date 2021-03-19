view: objectendorsement {
  sql_table_name: ovaledgedb.objectendorsement ;;
  drill_fields: [objectendorsementid]

  dimension: objectendorsementid {
    primary_key: yes
    type: number
    sql: ${TABLE}.objectendorsementid ;;
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

  dimension: lineageflag {
    type: yesno
    sql: ${TABLE}.lineageflag ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectid ;;
  }

  dimension: objecttype {
    type: string
    sql: ${TABLE}.objecttype ;;
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
    drill_fields: [objectendorsementid, user.userid, user.fname, user.lname]
  }
}
