view: jobstepvar {
  sql_table_name: ovaledgedb.jobstepvar ;;
  drill_fields: [jobstepvarid]

  dimension: jobstepvarid {
    primary_key: yes
    type: number
    sql: ${TABLE}.jobstepvarid ;;
  }

  dimension: jobstepid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.jobstepid ;;
  }

  dimension: var {
    type: string
    sql: ${TABLE}.var ;;
  }

  dimension: vardouble {
    type: number
    sql: ${TABLE}.vardouble ;;
  }

  dimension: varint {
    type: number
    sql: ${TABLE}.varint ;;
  }

  dimension: varlong {
    type: string
    sql: ${TABLE}.varlong ;;
  }

  dimension: vartext {
    type: string
    sql: ${TABLE}.vartext ;;
  }

  dimension: vartype {
    type: string
    sql: ${TABLE}.vartype ;;
  }

  measure: count {
    type: count
    drill_fields: [jobstepvarid, jobstep.jobstepid, jobstep.jobstepname]
  }
}
