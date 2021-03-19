view: docpackage {
  sql_table_name: ovaledgedb.docpackage ;;
  drill_fields: [docpackageid]

  dimension: docpackageid {
    primary_key: yes
    type: number
    sql: ${TABLE}.docpackageid ;;
  }

  dimension: docpackageinfoid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.docpackageinfoid ;;
  }

  dimension: islink {
    type: yesno
    sql: ${TABLE}.islink ;;
  }

  dimension: isreference {
    type: yesno
    sql: ${TABLE}.isreference ;;
  }

  dimension: link1 {
    type: string
    sql: ${TABLE}.link1 ;;
  }

  dimension: link10 {
    type: string
    sql: ${TABLE}.link10 ;;
  }

  dimension: link2 {
    type: string
    sql: ${TABLE}.link2 ;;
  }

  dimension: link3 {
    type: string
    sql: ${TABLE}.link3 ;;
  }

  dimension: link4 {
    type: string
    sql: ${TABLE}.link4 ;;
  }

  dimension: link5 {
    type: string
    sql: ${TABLE}.link5 ;;
  }

  dimension: link6 {
    type: string
    sql: ${TABLE}.link6 ;;
  }

  dimension: link7 {
    type: string
    sql: ${TABLE}.link7 ;;
  }

  dimension: link8 {
    type: string
    sql: ${TABLE}.link8 ;;
  }

  dimension: link9 {
    type: string
    sql: ${TABLE}.link9 ;;
  }

  dimension: linkreferencecolumn1 {
    type: string
    sql: ${TABLE}.linkreferencecolumn1 ;;
  }

  dimension: linkreferencecolumn10 {
    type: string
    sql: ${TABLE}.linkreferencecolumn10 ;;
  }

  dimension: linkreferencecolumn2 {
    type: string
    sql: ${TABLE}.linkreferencecolumn2 ;;
  }

  dimension: linkreferencecolumn3 {
    type: string
    sql: ${TABLE}.linkreferencecolumn3 ;;
  }

  dimension: linkreferencecolumn4 {
    type: string
    sql: ${TABLE}.linkreferencecolumn4 ;;
  }

  dimension: linkreferencecolumn5 {
    type: string
    sql: ${TABLE}.linkreferencecolumn5 ;;
  }

  dimension: linkreferencecolumn6 {
    type: string
    sql: ${TABLE}.linkreferencecolumn6 ;;
  }

  dimension: linkreferencecolumn7 {
    type: string
    sql: ${TABLE}.linkreferencecolumn7 ;;
  }

  dimension: linkreferencecolumn8 {
    type: string
    sql: ${TABLE}.linkreferencecolumn8 ;;
  }

  dimension: linkreferencecolumn9 {
    type: string
    sql: ${TABLE}.linkreferencecolumn9 ;;
  }

  dimension: linkreferencetable1 {
    type: string
    sql: ${TABLE}.linkreferencetable1 ;;
  }

  dimension: linkreferencetable10 {
    type: string
    sql: ${TABLE}.linkreferencetable10 ;;
  }

  dimension: linkreferencetable2 {
    type: string
    sql: ${TABLE}.linkreferencetable2 ;;
  }

  dimension: linkreferencetable3 {
    type: string
    sql: ${TABLE}.linkreferencetable3 ;;
  }

  dimension: linkreferencetable4 {
    type: string
    sql: ${TABLE}.linkreferencetable4 ;;
  }

  dimension: linkreferencetable5 {
    type: string
    sql: ${TABLE}.linkreferencetable5 ;;
  }

  dimension: linkreferencetable6 {
    type: string
    sql: ${TABLE}.linkreferencetable6 ;;
  }

  dimension: linkreferencetable7 {
    type: string
    sql: ${TABLE}.linkreferencetable7 ;;
  }

  dimension: linkreferencetable8 {
    type: string
    sql: ${TABLE}.linkreferencetable8 ;;
  }

  dimension: linkreferencetable9 {
    type: string
    sql: ${TABLE}.linkreferencetable9 ;;
  }

  dimension: linkreferencevalue1 {
    type: string
    sql: ${TABLE}.linkreferencevalue1 ;;
  }

  dimension: linkreferencevalue10 {
    type: string
    sql: ${TABLE}.linkreferencevalue10 ;;
  }

  dimension: linkreferencevalue2 {
    type: string
    sql: ${TABLE}.linkreferencevalue2 ;;
  }

  dimension: linkreferencevalue3 {
    type: string
    sql: ${TABLE}.linkreferencevalue3 ;;
  }

  dimension: linkreferencevalue4 {
    type: string
    sql: ${TABLE}.linkreferencevalue4 ;;
  }

  dimension: linkreferencevalue5 {
    type: string
    sql: ${TABLE}.linkreferencevalue5 ;;
  }

  dimension: linkreferencevalue6 {
    type: string
    sql: ${TABLE}.linkreferencevalue6 ;;
  }

  dimension: linkreferencevalue7 {
    type: string
    sql: ${TABLE}.linkreferencevalue7 ;;
  }

  dimension: linkreferencevalue8 {
    type: string
    sql: ${TABLE}.linkreferencevalue8 ;;
  }

  dimension: linkreferencevalue9 {
    type: string
    sql: ${TABLE}.linkreferencevalue9 ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: objectcolumn {
    type: string
    sql: ${TABLE}.objectcolumn ;;
  }

  dimension: objectcolumnvalue {
    type: string
    sql: ${TABLE}.objectcolumnvalue ;;
  }

  dimension: objectpk {
    type: string
    sql: ${TABLE}.objectpk ;;
  }

  dimension: objectpkid {
    type: number
    value_format_name: id
    sql: ${TABLE}.objectpkid ;;
  }

  dimension: referencecolumn {
    type: string
    sql: ${TABLE}.referencecolumn ;;
  }

  dimension: referencetable {
    type: string
    sql: ${TABLE}.referencetable ;;
  }

  dimension: referencevalue {
    type: string
    sql: ${TABLE}.referencevalue ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      docpackageid,
      docpackageinfo.docpackageinfoid,
      docpackageinfo.name,
      docpackageinfo.expconnectionname,
      docpackageinfo.expschemaname,
      docpackageinfo.impconnectionname,
      docpackageinfo.impschemaname
    ]
  }
}
