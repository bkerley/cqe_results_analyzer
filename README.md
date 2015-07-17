# CQE Results Analyzer

This is a set of SQL and shell scripts to load and analyze the DARPA Cyber
Grand Challenge Qualifying Event (CGC CQE) results using PostgreSQL.

1. Clone this project locally.
2. Have PostgreSQL up and running in such a fashion that `psql` and `createdb`
   do the right thing. Tested with PostgreSQL 9.4.4 from Homebrew on Mac OS X El
   Capitan 10.11 Beta (15A215h).
3. Make sure no `cqe_results` database exists.
4. Run `bin/load`. This script creates a `cqe_resutls` database, creates a
   `cqe_scores` table, copies the `CQE_SCORES.csv` file into said table, adds a
   primary key, and finally, runs the scripts in `src/views` to create SQL
   views for some "interesting" reports.
5. `psql -c "select * from unsolved_csets" cqe_results` or something like that.

## Developing

### Easy mode

File an issue on this repo describing what you'd like to see. If I have the
time and inclination, I'll give it a shot.

### Hard mode

0. Fork and clone this repo.
1. Design a query.
2. Make a new `.sql` file in `src/views`. Ideally, the name of the file will be
   the same as the view it defines.
3. Define your query as a view in said file. Copy `src/views/scores.sql` if
   you wish.
4. Commit it.
5. Push it to your fork.
6. Make a pull request.
