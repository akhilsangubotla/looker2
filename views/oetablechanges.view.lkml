view: oetablechanges {
  sql_table_name: ovaledgedb.oetablechanges ;;

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: rowcountchangedly {
    type: number
    sql: ${TABLE}.rowcountchangedly ;;
  }

  dimension: rowcountchangemly {
    type: number
    sql: ${TABLE}.rowcountchangemly ;;
  }

  dimension: rowcountchangewly {
    type: number
    sql: ${TABLE}.rowcountchangewly ;;
  }

  dimension: tablescorechangedly {
    type: number
    sql: ${TABLE}.tablescorechangedly ;;
  }

  dimension: tablescorechangemly {
    type: number
    sql: ${TABLE}.tablescorechangemly ;;
  }

  dimension: tablescorechangewly {
    type: number
    sql: ${TABLE}.tablescorechangewly ;;
  }

  dimension: usescorechangedly {
    type: number
    sql: ${TABLE}.usescorechangedly ;;
  }

  dimension: usescorechangemly {
    type: number
    sql: ${TABLE}.usescorechangemly ;;
  }

  dimension: usescorechangewly {
    type: number
    sql: ${TABLE}.usescorechangewly ;;
  }

  measure: count {
    type: count
    drill_fields: [oetable.oetableid, oetable.tablename, oetable.filename]
  }
}
