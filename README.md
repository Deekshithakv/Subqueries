# Subqueries
# 🧠 Task : Subqueries and Nested Queries

## 🎯 Objective

The objective of this task is to understand and apply **subqueries** and **nested queries** in SQL using different clauses such as `SELECT`, `WHERE`, and `FROM`. These queries help retrieve data that depends on the results of another query, enhancing data filtering and analysis.

---

## 🧰 Tools Used

* **MySQL Workbench** or **DB Browser for SQLite**

---

## 🗃️ Tables Created

1. **departments**

   * `dept_id` (INTEGER, Primary Key)
   * `dept_name` (TEXT)
   * `location` (TEXT)

2. **employees**

   * `emp_id` (INTEGER, Primary Key)
   * `emp_name` (TEXT)
   * `dept_id` (INTEGER, Foreign Key references departments)
   * `salary` (REAL)

---

## 💾 Sample Data

### Departments

| dept_id | dept_name | location |
| ------- | --------- | -------- |
| 10      | HR        | New York |
| 20      | IT        | Chicago  |
| 30      | Finance   | Boston   |

### Employees

| emp_id | emp_name | dept_id | salary |
| ------ | -------- | ------- | ------ |
| 1      | Alice    | 10      | 70000  |
| 2      | Bob      | 10      | 50000  |
| 3      | Carol    | 20      | 60000  |
| 4      | David    | 30      | 80000  |

---


## 🧾 Learning Outcomes

* Gained a solid understanding of **subquery structures** and **execution order**.
* Learned to apply subqueries in different SQL clauses effectively.
* Understood the difference between **simple**, **correlated**, and **nested subqueries**.
* Practiced using `IN`, `EXISTS`, and aggregate subqueries to extract meaningful insights.

---


## ✅ Outcome

Successfully demonstrated the use of **Subqueries and Nested Queries** in SQL through multiple examples that showcase real-world applications such as filtering, comparison, and aggregation.

---

