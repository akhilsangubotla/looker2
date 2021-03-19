view: operation {
  sql_table_name: ovaledgedb.operation ;;
  drill_fields: [operationid]

  dimension: operationid {
    primary_key: yes
    type: number
    sql: ${TABLE}.operationid ;;
  }

  dimension_group: createdate {
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
    sql: ${TABLE}.createdate ;;
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

  dimension: subtype {
    type: string
    sql: ${TABLE}.subtype ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: userid {
    type: string
    # hidden: yes
    sql: ${TABLE}.userid ;;
  }

  dimension: var {
    type: string
    sql: ${TABLE}.var ;;
  }

  dimension: var1 {
    type: string
    sql: ${TABLE}.var1 ;;
  }

  dimension: var2 {
    type: string
    sql: ${TABLE}.var2 ;;
  }

  dimension: varint {
    type: number
    sql: ${TABLE}.varint ;;
  }

  measure: count {
    type: count
    drill_fields: [operationid, name, user.userid, user.fname, user.lname]
  }
}
