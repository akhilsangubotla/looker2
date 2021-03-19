view: dept {
  sql_table_name: ovaledgedb.dept ;;

  dimension: deptno {
    type: number
    sql: ${TABLE}.deptno ;;
  }

  dimension: dname {
    type: string
    sql: ${TABLE}.dname ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.loc ;;
  }

  measure: count {
    type: count
    drill_fields: [dname]
  }
}
