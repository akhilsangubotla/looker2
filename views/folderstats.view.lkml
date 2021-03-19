view: folderstats {
  sql_table_name: ovaledgedb.folderstats ;;
  drill_fields: [folderstatsid]

  dimension: folderstatsid {
    primary_key: yes
    type: number
    sql: ${TABLE}.Folderstatsid ;;
  }

  dimension: file_type_stats {
    type: string
    sql: ${TABLE}.FileTypeStats ;;
  }

  dimension: filecount {
    type: number
    sql: ${TABLE}.filecount ;;
  }

  dimension: foldercount {
    type: number
    sql: ${TABLE}.foldercount ;;
  }

  dimension: foldername {
    type: string
    sql: ${TABLE}.foldername ;;
  }

  dimension: tablecreateflag {
    type: yesno
    sql: ${TABLE}.Tablecreateflag ;;
  }

  dimension: totalrowcount {
    type: number
    sql: ${TABLE}.Totalrowcount ;;
  }

  measure: count {
    type: count
    drill_fields: [folderstatsid, foldername]
  }
}
