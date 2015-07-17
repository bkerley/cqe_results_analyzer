CREATE VIEW unsolved_csets
       AS SELECT q.cset FROM
          (SELECT
               cset,
               AVG(ConsensusScore) AS consensus
               FROM cqe_scores
               GROUP BY cset
               ORDER BY cset asc) as q
               WHERE q.consensus = 1;
