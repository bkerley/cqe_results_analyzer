ALTER TABLE cqe_scores
      ADD COLUMN id serial PRIMARY KEY;

CREATE INDEX ON cqe_scores (TeamName);
CREATE INDEX ON cqe_scores (cset);
