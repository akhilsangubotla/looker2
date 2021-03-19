view: tabletag {
  sql_table_name: ovaledgedb.tabletag ;;
  drill_fields: [tabletagid]

  dimension: tabletagid {
    primary_key: yes
    type: number
    sql: ${TABLE}.TABLETAGID ;;
  }

  dimension: oetableid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.OETABLEID ;;
  }

  dimension: tagid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TAGID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      tabletagid,
      oetable.oetableid,
      oetable.tablename,
      oetable.filename,
      tags.tagname,
      tags.parenttagid
    ]
  }
}
