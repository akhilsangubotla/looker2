view: regextable {
  sql_table_name: ovaledgedb.regextable ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: columnname {
    type: string
    sql: ${TABLE}.columnname ;;
  }

  dimension: filestructureid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.filestructureid ;;
  }

  dimension: functionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.functionid ;;
  }

  dimension: inputvalue {
    type: string
    sql: ${TABLE}.inputvalue ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      columnname,
      filestructure.filestructureid,
      filestructure.schemaname,
      filestructure.tablename,
      filestructure.jobname
    ]
  }
}
