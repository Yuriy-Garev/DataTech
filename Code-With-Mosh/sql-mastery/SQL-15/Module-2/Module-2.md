# [SQL-15] SQL Mastery

## [Module-2] Retrieving Data From a Single Table

### <span style="color:#e39414">SELECT Clause</span>

#### <span style="color:#ffce44">📒 THEORY</span>

> **SELECT ***  // select all columns

```mysql
USE sql_store;

# This is legal. It returns two columns row with 1 and 2 as values.
# SELECT 1, 2

SELECT *
FROM customers
```

> We could also select specific columns 

```mysql
USE sql_store;

SELECT 
	first_name,
	last_name,
	points,
	(point + 10) * 100 AS discount_factor
	# or
	# (point + 10) * 100 AS 'discount factor'

```

> **AS** - allows to rename column header;

> Instead of **USE db_name** it’s also possible to do it like this:

```mysql
SELECT * FROM sql_store.customers;
```

> To avoid duplicates in selected result there is a function **DISTINCT**

```mysql
SELECT DISTINCT state
FROM sql_store.customers;
```

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

Return all the products

- name
- unit price
- new price (unit price * 1.1)

**RESULT**

```mysql
SELECT
	name,
	unit_price AS 'unit price',
	unit_price * 1.1 AS 'new price'
FROM sql_store.products;
```

| name                         | unit price | new price |
| :--------------------------- | ---------: | --------: |
| Foam Dinner Plate            |       1.21 |     1.331 |
| Pork - Bacon,back Peameal    |       4.65 |     5.115 |
| Lettuce - Romaine, Heart     |       3.35 |     3.685 |
| Brocolinni - Gaylan, Chinese |       4.53 |     4.983 |
| Sauce - Ranch Dressing       |       1.63 |     1.793 |
| Petit Baguette               |       2.39 |     2.629 |
| Sweet Pea Sprouts            |       3.29 |     3.619 |
| Island Oasis - Raspberry     |       0.74 |     0.814 |
| Longan                       |       2.26 |     2.486 |
| Broom - Push                 |       1.09 |     1.199 |



### <span style="color:#e39414">WHERE Clause</span>

#### <span style="color:#ffce44">📒 THEORY</span>

Technically speaking these two are similar

```mysql
SELECT *
FROM sql_store.customers
WHERE state = 'VA'
# WHERE state = "va"
```

There is no difference which one to use `‘ ’` or `“ ”` with strings. Conventionally it’s better to use `‘ ’`

To SELECT the data of customers which are NOT from ‘VA’ state there is `!=` or `<>`

```mysql
SELECT *
FROM sql_store.customers
WHERE state != 'VA'
# WHERE state <> 'VA'
```

It is also possible to use WHERE Clause to filter dates. Although, dates are not strings they could be provided as specially formatted strings like `‘yyyy-mm-dd’` 

```mysql
SELECT *
FROM sql_store.customers
WHERE birth_date > '1990-01-01'
```



#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

Get the orders placed this year

**RESULT**

```mysql
SELECT *
FROM sql_store.orders
WHERE order_date >= '2022-04-27'
```

There are no such orders in DB.

### <span style="color:#e39414">AND, OR and NOT Operators</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">IN Operator</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">BETWEEN Operator</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">LIKE Operator</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">REGEXP Operator</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">IS NULL Operator</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">ORDER BY Clause</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**



### <span style="color:#e39414">LIMIT Clause</span>

#### <span style="color:#ffce44">📒 THEORY</span>

#### <span style="color:#ffce44">📝 PRACTICE</span>

**EXERCISE**

**RESULT**