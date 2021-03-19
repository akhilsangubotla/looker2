view: multipredecessor {
  sql_table_name: ovaledgedb.multipredecessor ;;
  drill_fields: [multipredecessorid]

  dimension: multipredecessorid {
    primary_key: yes
    type: number
    sql: ${TABLE}.multipredecessorid ;;
  }

  dimension: jobstepid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobstepid ;;
  }

  dimension: predecessor {
    type: number
    sql: ${TABLE}.predecessor ;;
  }

  measure: count {
    type: count
    drill_fields: [multipredecessorid, jobstep.jobstepid, jobstep.jobstepname, jobstep.count]
  }
}
