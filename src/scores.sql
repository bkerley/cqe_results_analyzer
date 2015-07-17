SELECT
        TeamName,
        sum(CB_Score) as total_score
        FROM cqe_scores
        GROUP BY TeamName
        ORDER BY total_score DESC;
