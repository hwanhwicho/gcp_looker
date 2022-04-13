# The name of this view in Looker is "Aihwanlookertesttitanictable"
view: aihwanlookertesttitanictable {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai_hwan_looker_test_dataset.ai-hwan-looker-test-titanic-table`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
  }

  dimension: cabin {
    type: string
    sql: ${TABLE}.Cabin ;;
  }

  dimension: embarked {
    type: string
    sql: ${TABLE}.Embarked ;;
  }

  dimension: fare {
    type: number
    sql: ${TABLE}.Fare ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: parch {
    type: number
    sql: ${TABLE}.Parch ;;
  }

  dimension: passenger_id {
    type: number
    sql: ${TABLE}.PassengerId ;;
  }

  dimension: pclass {
    type: number
    sql: ${TABLE}.Pclass ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.Sex ;;
  }

  dimension: sib_sp {
    type: number
    sql: ${TABLE}.SibSp ;;
  }

  dimension: survived {
    type: number
    sql: ${TABLE}.Survived ;;
  }

  dimension: ticket {
    type: string
    sql: ${TABLE}.Ticket ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
