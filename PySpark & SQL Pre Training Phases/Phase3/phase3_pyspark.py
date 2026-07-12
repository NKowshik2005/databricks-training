# Exercise 1 – Daily Sales
display(

sales.groupBy(
    "order_date"
).agg(
    sum("order_amount").alias("daily_sales")
)

)

# Exercise 2 – City-wise Revenue

display(

customers.join(
    sales,
    "customer_id"
)

.groupBy(
    "city"
)

.agg(
    sum("order_amount").alias("city_revenue")
)

)

# Exercise 3 – Repeat Customers
display(

sales.groupBy(
    "customer_id"
)

.agg(
    count("*").alias("orders")
)

.filter(
    col("orders") > 2
)

)


# Exercise 4 – Highest Spending Customer in Each City
report = (

customers.join(
    sales,
    "customer_id"
)

.groupBy(
    "customer_id",
    "name",
    "city"
)

.agg(
    sum("order_amount").alias("total_spend")
)

)

report.createOrReplaceTempView("reporting")

display(report)

display(

report.groupBy(
    "city"
)

.agg(
    max("total_spend").alias("highest_spend")
)

)


# Exercise 5 – Final Reporting Table

final_report = (

customers.join(
    sales,
    "customer_id"
)

.groupBy(
    "customer_id",
    "name",
    "city"
)

.agg(
    sum("order_amount").alias("total_spend"),
    count("order_id").alias("order_count")
)

)

display(final_report)


