view: columnpattern {
  sql_table_name: ovaledgedb.columnpattern ;;
  drill_fields: [columnpatternid]

  dimension: columnpatternid {
    primary_key: yes
    type: number
    sql: ${TABLE}.columnpatternid ;;
  }

  dimension: count_columnpattern {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: oecolumnid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.oecolumnid ;;
  }

  dimension: pattern {
    type: string
    sql: ${TABLE}.pattern ;;
  }

  measure: count {
    type: count
    drill_fields: [columnpatternid, oecolumn.oecolumnid, oecolumn.columnname]
  }
}
