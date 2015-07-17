CREATE VIEW scores
       AS SELECT
               TeamName,
               SUM(CB_Score) AS total_score
               FROM cqe_scores
               GROUP BY TeamName
               ORDER BY total_score DESC;
