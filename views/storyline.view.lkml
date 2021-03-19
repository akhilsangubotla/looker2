view: storyline {
  sql_table_name: ovaledgedb.storyline ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: createdby {
    type: string
    sql: ${TABLE}.createdby ;;
  }

  dimension_group: createddate {
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
    sql: ${TABLE}.createddate ;;
  }

  dimension: domainid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.domainid ;;
  }

  dimension_group: lastmoddate {
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
    sql: ${TABLE}.lastmoddate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.parentid ;;
  }

  dimension: story {
    type: string
    sql: ${TABLE}.story ;;
  }

  dimension: storyorder {
    type: number
    sql: ${TABLE}.storyorder ;;
  }

  dimension: storypage {
    type: string
    sql: ${TABLE}.storypage ;;
  }

  dimension: usescore {
    type: number
    sql: ${TABLE}.usescore ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, domain.domainid]
  }
}
