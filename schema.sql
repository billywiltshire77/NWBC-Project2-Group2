CREATE TABLE stocks (
    ticker varchar   NOT NULL,
    company varchar   NOT NULL,
    open_price int   NOT NULL,
    high int   NOT NULL,
    low int   NOT NULL,
    rating int   NOT NULL,
    recommendation varchar   NOT NULL,
    fifty_day_avg int   NOT NULL,
    two_hundred_day_avg int   NOT NULL,
    price int   NOT NULL,
    Primary key (ticker)
);

CREATE TABLE articles (
    ticker varchar  NOT NULL,
    title varchar  NOT NULL,
    article_link varchar  NOT NULL,
    rating int   NOT NULL,
    recommendation varchar   NOT NULL,
    date_created date   NOT NULL,
    ticker_date varchar   NOT NULL,
    Foreign key (ticker) references stocks(ticker),
	Primary key (ticker, date_created)
);