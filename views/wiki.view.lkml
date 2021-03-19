view: wiki {
  sql_table_name: ovaledgedb.wiki ;;
  drill_fields: [wikiid]

  dimension: wikiid {
    primary_key: yes
    type: number
    sql: ${TABLE}.wikiid ;;
  }

  dimension_group: lastupdatetime {
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
    sql: ${TABLE}.lastupdatetime ;;
  }

  dimension: lastupdateuser {
    type: string
    sql: ${TABLE}.lastupdateuser ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  dimension: wikiobject {
    type: string
    sql: ${TABLE}.wikiobject ;;
  }

  dimension: wikiobjectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.wikiobjectid ;;
  }

  dimension: wikitext {
    type: string
    sql: ${TABLE}.wikitext ;;
  }

  measure: count {
    type: count
    drill_fields: [wikiid]
  }
}
