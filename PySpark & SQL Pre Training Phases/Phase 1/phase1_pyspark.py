# Select a single column
display(
    df.select("name")
)

# Select multiple columns
display(
    df.select(
        "name",
        "department",
        "salary"
    )
)

# Select columns using col()
display(
    df.select(
        col("name"),
        col("city"),
        col("experience")
    )
)


# Add a computed column
display(
    df.withColumn(
        "salary_after_bonus",
        col("salary") + 5000
    )
)

# Add a constant column
display(
    df.withColumn(
        "country",
        lit("India")
    )
)


# Rename columns only in the output
display(
    df.select(
        col("name").alias("Employee Name"),
        col("salary").alias("Monthly Salary")
    )
)


# Permanently rename a column in the DataFrame
display(
    df.withColumnRenamed(
        "department",
        "dept"
    )
)

# Drop a single column
display(
    df.drop("salary")
)

# Drop multiple columns
display(
    df.drop(
        "salary",
        "status"
    )
)


# Filter employees with salary greater than 70000
display(
    df.filter(
        col("salary") > 70000
    )
)

# Filter employees with age greater than 30
display(
    df.where(
        "age > 30"
    )
)

# Filter using AND condition
display(
    df.filter(
        "salary > 70000 AND department='Finance'"
    )
)

# Filter using OR condition
display(
    df.filter(
        (col("department") == "HR") |
        (col("department") == "Research")
    )
)

# Filter using NOT condition
display(
    df.filter(
        ~(col("status") == "Inactive")
    )
)

# Display rows where age is NULL
display(
    df.filter(
        col("age").isNull()
    )
)

# Display rows where department is NOT NULL
display(
    df.filter(
        col("department").isNotNull()
    )
)
