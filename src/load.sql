-- has to be catted in, need the client to load the csv not the server
\copy cqe_scores from 'vendor/CQE_SCORES.csv' WITH (HEADER TRUE, FORMAT CSV);
