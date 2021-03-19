view: emp {
  sql_table_name: ovaledgedb.emp ;;

  dimension: comm {
    type: number
    sql: ${TABLE}.comm ;;
  }

  dimension: deptno {
    type: number
    sql: ${TABLE}.deptno ;;
  }

  dimension: empno {
    type: number
    sql: ${TABLE}.empno ;;
  }

  dimension: ename {
    type: string
    sql: ${TABLE}.ename ;;
  }

  dimension_group: hiredate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.hiredate ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}.job ;;
  }

  dimension: mgr {
    type: number
    sql: ${TABLE}.mgr ;;
  }

  dimension: sal {
    type: number
    sql: ${TABLE}.sal ;;
  }

  measure: count {
    type: count
    drill_fields: [ename]
  }
}
