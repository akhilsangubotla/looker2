view: aiassistedtabletag {
  sql_table_name: ovaledgedb.aiassistedtabletag ;;
  drill_fields: [aiassistedtabletagid]

  dimension: aiassistedtabletagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.aiassistedtabletagid ;;
  }

  dimension: guessscore {
    type: number
    sql: ${TABLE}.guessscore ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oetableid ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.tagid ;;
  }

  dimension: userinputid {
    type: number
    value_format_name: id
    sql: ${TABLE}.userinputid ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      aiassistedtabletagid,
      tags.tagname,
      tags.parenttagid,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename
    ]
  }
}
