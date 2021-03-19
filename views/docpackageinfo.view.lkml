view: docpackageinfo {
  sql_table_name: ovaledgedb.docpackageinfo ;;
  drill_fields: [docpackageinfoid]

  dimension: docpackageinfoid {
    primary_key: yes
    type: number
    sql: ${TABLE}.docpackageinfoid ;;
  }

  dimension: expcolumnrelation {
    type: yesno
    sql: ${TABLE}.expcolumnrelation ;;
  }

  dimension: expconnectionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.expconnectionid ;;
  }

  dimension: expconnectionname {
    type: string
    sql: ${TABLE}.expconnectionname ;;
  }

  dimension: expjobstatus {
    type: string
    sql: ${TABLE}.expjobstatus ;;
  }

  dimension: expschemaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.expschemaid ;;
  }

  dimension: expschemaname {
    type: string
    sql: ${TABLE}.expschemaname ;;
  }

  dimension: exptablerelation {
    type: yesno
    sql: ${TABLE}.exptablerelation ;;
  }

  dimension: exptabletag {
    type: yesno
    sql: ${TABLE}.exptabletag ;;
  }

  dimension: expwiki {
    type: yesno
    sql: ${TABLE}.expwiki ;;
  }

  dimension: impcolumnrelation {
    type: yesno
    sql: ${TABLE}.impcolumnrelation ;;
  }

  dimension: impconnectionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.impconnectionid ;;
  }

  dimension: impconnectionname {
    type: string
    sql: ${TABLE}.impconnectionname ;;
  }

  dimension: impjobstatus {
    type: string
    sql: ${TABLE}.impjobstatus ;;
  }

  dimension: impschemaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.impschemaid ;;
  }

  dimension: impschemaname {
    type: string
    sql: ${TABLE}.impschemaname ;;
  }

  dimension: imptablerelation {
    type: yesno
    sql: ${TABLE}.imptablerelation ;;
  }

  dimension: imptabletag {
    type: yesno
    sql: ${TABLE}.imptabletag ;;
  }

  dimension: impwiki {
    type: yesno
    sql: ${TABLE}.impwiki ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      docpackageinfoid,
      name,
      expconnectionname,
      expschemaname,
      impconnectionname,
      impschemaname,
      docpackage.count
    ]
  }
}
