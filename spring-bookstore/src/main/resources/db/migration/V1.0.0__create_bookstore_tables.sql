CREATE TABLE
  BOOKS (
    BOOK_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(255) NOT NULL,
    AUTHOR VARCHAR(255) NOT NULL,
    AVAILABILITY SMALLINT NOT NULL,
    DISCOUNT_RATE TINYINT NOT NULL DEFAULT 0,
    ISBN CHAR(13),
    ITEM_PRICE SMALLINT NOT NULL,
    ITEM_URL TEXT NOT NULL,
    LARGE_IMAGE_URL TEXT NOT NULL,
    MEDIUM_IMAGE_URL TEXT NOT NULL,
    SMALL_IMAGE_URL TEXT NOT NULL,
    POSTAGE_FLAG TINYINT NOT NULL,
    PUBLISHER_NAME VARCHAR(255) NOT NULL,
    REVIEW_AVERAGE FLOAT NOT NULL,
    REVIEW_COUNT SMALLINT NOT NULL,
    SALES_DATE TIMESTAMP NOT NULL
  );

CREATE TABLE
  BOOK_GENRE (
    GENRE_ID CHAR(6) NOT NULL PRIMARY KEY,
    GENRE_NAME VARCHAR(255) NOT NULL
  );

CREATE TABLE
  BOOK_GENRE_RELATIONS (
    ID SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BOOK_ID INT NOT NULL,
    GENRE_ID CHAR(6) NOT NULL
  );