CREATE TABLE person (
    person_id               RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    person                  VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_person UNIQUE ( person ),    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

-- Trigger to update date_updated for virtualization_software
CREATE OR REPLACE TRIGGER trg_set_date_updated_person
BEFORE UPDATE ON person
FOR EACH ROW
BEGIN
    :NEW.date_updated := systimestamp;
END;
/

CREATE TABLE person_property (
    person_property_id               RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    person_property                  VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_person_property UNIQUE ( person_property ),    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

-- Trigger to update date_updated for virtualization_software
CREATE OR REPLACE TRIGGER trg_set_date_updated_person_property
BEFORE UPDATE ON person_property
FOR EACH ROW
BEGIN
    :NEW.date_updated := systimestamp;
END;
/


CREATE TABLE join_person_and_person_property (
    join_person_and_person_property_id                   RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    person_id          RAW(16) NOT NULL,
    person_property_id RAW(16) NOT NULL,
    value varchar(4000) not null,
    CONSTRAINT fk_person_and_person_property_refers_to_person FOREIGN KEY ( person_id )
        REFERENCES person ( person_id ),
    CONSTRAINT fk_person_and_person_property_refers_to_person_property FOREIGN KEY ( person_property_id )
        REFERENCES person_property ( person_property_id ),
    CONSTRAINT unique_combination_of_person_and_person_property UNIQUE ( person_id,
                                               person_property_id ),

    -- Additional columns for note and dates
    note                         VARCHAR2(4000),  -- General-purpose note field
    date_created                 TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated                 TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated      TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trg_set_date_updated_join_person_and_person_property
BEFORE UPDATE ON join_person_and_person_property
FOR EACH ROW
BEGIN
    :NEW.date_updated := systimestamp;
END;
/