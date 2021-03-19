view: filestructurepackage {
  sql_table_name: ovaledgedb.filestructurepackage ;;
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

  dimension: packageid {
    type: number
    value_format_name: id
    sql: ${TABLE}.packageid ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filestructure.filestructureid, filestructure.schemaname, filestructure.tablename, filestructure.jobname]
  }
}
