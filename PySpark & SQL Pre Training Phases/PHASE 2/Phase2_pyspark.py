# Total Order Amount for Each Customer
display(
    customers.join(
        orders,
        "customer_id"
    ).groupBy(
        "customer_id",
        "name"
    ).agg(
        sum("order_amount").alias("total_amount")
    )
)


# Top 3 Customers by Total Spend
display(
    customers.join(
        orders,
        "customer_id"
    ).groupBy(
        "customer_id",
        "name"
    ).agg(
        sum("order_amount").alias("total_spend")
    ).orderBy(
        desc("total_spend")
    ).limit(3)
)


# Customers with No Orders
display(
    customers.join(
        orders,
        "customer_id",
        "left"
    ).filter(
        orders.customer_id.isNull()
    )
)


# City-wise Total 
display(
    customers.join(
        orders,
        "customer_id"
    ).groupBy(
        "city"
    ).agg(
        sum("order_amount").alias("revenue")
    )
)


# Average Order Amount per Customer
display(
    orders.groupBy(
        "customer_id"
    ).agg(
        avg("order_amount").alias("average_order")
    )
)
 
# Customers with More Than One Order

display(
    orders.groupBy(
        "customer_id"
    ).agg(
        count("*").alias("orders")
    ).filter(
        col("orders") > 1
    )
)


# Sort Customers by Total Spend (Descending)

display(
    customers.join(
        orders,
        "customer_id"
    ).groupBy(
        "customer_id",
        "name"
    ).agg(
        sum("order_amount").alias("total_spend")
    ).orderBy(
        desc("total_spend")
    )
)
