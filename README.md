# Liquibase-Fundamentals

**What is Liquibase?**

Liquibase is a database migration tool that helps to track, and deploy database schema changes.

**3 Main Components of liquibase**
- Changelog
- Changeset
- Change Types

**changelog  <-  changesets  <-  change types**

**Maven Liquibase Commands**
- mvn liquibase:generateChangeLog
- mvn liquibase:status
- mvn liquibase:updateSQL
- mvn liquibase:update
- mvn liquibase:rollback -Dliquibase.rollbackCount=1
- mvn liquibase:history
- mvn liquibase:diff
- mvn liquibase:changeLogSync
- mvn liquibase:clearCheckSums



**References**

[Liquibase University Fundamentals Course](https://learn.liquibase.com/catalog/info/id:125)
