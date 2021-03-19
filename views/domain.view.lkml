view: domain {
  sql_table_name: ovaledgedb.domain ;;
  drill_fields: [domainid]

  dimension: domainid {
    primary_key: yes
    type: number
    sql: ${TABLE}.DOMAINID ;;
  }

  dimension: connectioninfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.connectioninfoid ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: domaintype {
    type: string
    sql: ${TABLE}.domaintype ;;
  }

  dimension: extreferenceid {
    type: string
    sql: ${TABLE}.extreferenceid ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      domainid,
      connectioninfo.connectioninfoid,
      connectioninfo.username,
      connectioninfo.name,
      connectioninfo.drivername,
      chart.count,
      storyline.count
    ]
  }
}
