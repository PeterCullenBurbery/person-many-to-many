SELECT
    person_id
FROM
    person
WHERE
    REGEXP_LIKE ( person,
                  'Peter',
                  'i' );

SELECT
    person_property_id
FROM
    person_property
WHERE
    REGEXP_LIKE ( person_property,
                  'first',
                  'i' );

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Peter',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          'first',
                          'i' )
    ),
    'Peter'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Cullen',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^middle',
                          'i' )
    ),
    'Cullen'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Burbery',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^last',
                          'i' )
    ),
    'Burbery'
);

--------------------------

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'James',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          'first',
                          'i' )
    ),
    'James'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Allen',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^middle',
                          'i' )
    ),
    'Allen'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Gibbs',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^last',
                          'i' )
    ),
    'Gibbs'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          '3',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^suffix',
                          'i' )
    ),
    '3'
);
-----------------
INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Nicholas',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          'first',
                          'i' )
    ),
    'Nicholas'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,
    value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Petrany',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^last',
                          'i' )
    ),
    'Petrany'
);

------------------------

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Franklin',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          'first',
                          'i' )
    ),'Franklin'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Delano',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^middle',
                          'i' )
    ),'Delano'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Roosevelt',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^last',
                          'i' )
    ),'Roosevelt'
);
------------------------

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Kateryna',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          'first',
                          'i' )
    ),'Kateryna'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Alexandra',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^middle',
                          'i' )
    ),'Alexandra'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Schray',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^last',
                          'i' )
    ),'Schray'
);

INSERT INTO join_person_and_person_property (
    person_id,
    person_property_id,value
) VALUES (
    (
        SELECT
            person_id
        FROM
            person
        WHERE
            REGEXP_LIKE ( person,
                          'Rudnytzky',
                          'i' )
    ),
    (
        SELECT
            person_property_id
        FROM
            person_property
        WHERE
            REGEXP_LIKE ( person_property,
                          '^second middle',
                          'i' )
    ),'Rudnytzky'
);

SELECT
    prsn.person,
    prsnprty.person_property,
    jpp.value
FROM
         join_person_and_person_property jpp
    JOIN person          prsn ON prsn.person_id = jpp.person_id
    JOIN person_property prsnprty ON prsnprty.person_property_id = jpp.person_property_id order by jpp.date_created asc;