view: shellprocessor {
  sql_table_name: ovaledgedb.shellprocessor ;;
  drill_fields: [shellprocessorid]

  dimension: shellprocessorid {
    primary_key: yes
    type: number
    sql: ${TABLE}.shellprocessorid ;;
  }

  dimension: commands {
    type: string
    sql: ${TABLE}.commands ;;
  }

  dimension: saved {
    type: yesno
    sql: ${TABLE}.saved ;;
  }

  dimension: servertype {
    type: string
    sql: ${TABLE}.servertype ;;
  }

  dimension: shellname {
    type: string
    sql: ${TABLE}.shellname ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  measure: count {
    type: count
    drill_fields: [shellprocessorid, shellname, user.userid, user.fname, user.lname]
  }
}
