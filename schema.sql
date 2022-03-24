CREATE TABLE stocks (
    ticker varchar   NOT NULL,
    company_name varchar   NOT NULL,
    day_open int   NOT NULL,
    day_high int   NOT NULL,
    day_low int   NOT NULL,
    fifty_day_moving_avg int   NOT NULL,
    two_hundred_day_moving_avg int NOT NULL,
    num_rating int   NOT NULL,
    rating varchar   NOT NULL,
    norm_rating int NOT NULL,
    Primary key (ticker)
);

CREATE TABLE articles (
    ticker varchar  NOT NULL,
    analyst_rating varchar   NOT NULL,
    article_title varchar  NOT NULL,
    article_date date   NOT NULL,
    link varchar  NOT NULL,
    Foreign key (ticker) references stocks(ticker),
	Primary key (ticker, article_date)
);