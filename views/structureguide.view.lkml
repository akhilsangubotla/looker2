view: structureguide {
  sql_table_name: ovaledgedb.structureguide ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: filestructureid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.filestructureid ;;
  }

  dimension: hiveschemaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hiveschemaid ;;
  }

  dimension: hivetableid {
    type: number
    value_format_name: id
    sql: ${TABLE}.hivetableid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filestructure.filestructureid, filestructure.schemaname, filestructure.tablename, filestructure.jobname]
  }
}
