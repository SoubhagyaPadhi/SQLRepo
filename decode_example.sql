select * from users;

select first_name,decode(decoded_userid,'first','one',
                       'second','two',
                       'twenty-first','two-one',
                       'no_text') as test from (
SELECT
    first_name,
    decode(user_id, 1, 'first',
                   21, 'twenty-first',
                    2, 'second',
                       'default') as decoded_userid
FROM
    users);
