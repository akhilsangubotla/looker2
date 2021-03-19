view: project {
  sql_table_name: ovaledgedb.project ;;
  drill_fields: [projectid]

  dimension: projectid {
    primary_key: yes
    type: number
    sql: ${TABLE}.projectid ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: lastupdatedate {
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
    sql: ${TABLE}.lastupdatedate ;;
  }

  dimension: projectname {
    type: string
    sql: ${TABLE}.projectname ;;
  }

  measure: count {
    type: count
    drill_fields: [projectid, projectname, jobflow.count]
  }
}
