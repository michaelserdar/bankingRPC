CREATE TABLE IF NOT EXISTS accounts(
  account TEXT PRIMARY KEY,
  balance INTEGER NOT NULL CHECK (balance >= 0)
);
