CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(5000) NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Daily Projects', 'Finish homework from class at The Iron Yard', '1', NOW(), now());

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Do Laundry', 'Wash, dry and fold laundry, put clothes where they belong', '2', now(), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Clean apartment', 'dust, sweep, vaccuum and wipe all surfaces down', '3', now(), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Play with my dog', 'Throw the ball and he goes to get the ball', '4', now(), NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Drink a beer', 'Crack open a cold one', '5', now(), NULL);

SELECT * FROM todos WHERE completed_at = NULL;
SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = now() WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;
