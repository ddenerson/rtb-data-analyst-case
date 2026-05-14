--Build using postgreSQL 13.0 or higher;
--This schema can be created and tested in sandbox sites like - https://sqlplayground.app/
CREATE EXTENSION IF NOT EXISTS "pgcrypto";
create table advertiser (
  id uuid primary key,
  name varchar(32) not null
);
create table "user" (id uuid primary key);
create table impressions (
  id uuid primary key default gen_random_uuid(),
  date timestamp not null,
  advertiser_id uuid not null,
  user_id uuid not null,
  constraint impressions_fk_1 foreign key (advertiser_id) references advertiser (id),
  constraint impressions_fk_2 foreign key (user_id) references "user" (id)
);
create table clicks (
  id uuid primary key default gen_random_uuid(),
  date timestamp not null,
  advertiser_id uuid not null,
  user_id uuid not null,
  cost numeric not null,
  constraint clicks_fk_1 foreign key (advertiser_id) references advertiser (id),
  constraint clicks_fk_2 foreign key (user_id) references "user" (id)
);
create table tags (
  id uuid primary key default gen_random_uuid(),
  date timestamp not null,
  advertiser_id uuid not null,
  user_id uuid not null,
  tag_type varchar(32) not null,
  constraint tags_fk_1 foreign key (advertiser_id) references advertiser (id),
  constraint tags_fk_2 foreign key (user_id) references "user" (id)
);
create table conversions (
  id uuid primary key default gen_random_uuid(),
  date timestamp not null,
  advertiser_id uuid not null,
  user_id uuid not null,
  value numeric not null,
  rtb boolean not null,
  constraint conversions_fk_1 foreign key (advertiser_id) references advertiser (id),
  constraint conversions_fk_2 foreign key (user_id) references "user" (id)
);
insert into advertiser
values (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    'advertiser1'
  ),
  (
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    'advertiser2'
  );
insert into "user"
values ('735b5495-5928-49e9-abeb-e631a73bdd4b'),
  ('4e7d7f61-1217-49d2-bf93-eb3023d3f00d');
insert into impressions (advertiser_id, user_id, date)
values (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    '2024-11-03'
  ),
  (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    '2024-11-07'
  ),
  (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    '2024-11-10'
  ),
  (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    '2024-11-20'
  ),
  (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-15'
  ),
  (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    '2024-11-04'
  ),
  (
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-08'
  ),
  (
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-15'
  ),
  (
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-23'
  ),
  (
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-27'
  ),
  (
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-29'
  ),
  (
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    '2024-11-30'
  );
insert into clicks (date, advertiser_id, user_id, "cost")
values (
    '2024-11-03',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    1.36
  ),
  (
    '2024-11-03',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    4.24
  ),
  (
    '2024-11-07',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    2.67
  ),
  (
    '2024-11-08',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    1.04
  ),
  (
    '2024-11-10',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    1.64
  ),
  (
    '2024-11-12',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    1.05
  ),
  (
    '2024-11-12',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    1.53
  ),
  (
    '2024-11-20',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    0.87
  ),
  (
    '2024-11-22',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    0.98
  ),
  (
    '2024-11-23',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    1.03
  ),
  (
    '2024-11-23',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    1.04
  ),
  (
    '2024-11-28',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    1.07
  );
insert into tags (date, advertiser_id, user_id, tag_type)
values (
    '2024-11-03',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'OFFER_PAGE'
  ),
  (
    '2024-11-04',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'OFFER_PAGE'
  ),
  (
    '2024-11-05',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'HOME_PAGE'
  ),
  (
    '2024-11-05',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'OFFER_PAGE'
  ),
  (
    '2024-11-10',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'HOME_PAGE'
  ),
  (
    '2024-11-12',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'OFFER_PAGE'
  ),
  (
    '2024-11-13',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'ORDER'
  ),
  (
    '2024-11-21',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'ORDER'
  ),
  (
    '2024-11-22',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'OFFER_PAGE'
  ),
  (
    '2024-11-23',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'ORDER'
  ),
  (
    '2024-11-23',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'ORDER'
  ),
  (
    '2024-11-23',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'HOME_PAGE'
  ),
  (
    '2024-11-27',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'OFFER_PAGE'
  ),
  (
    '2024-11-29',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    'ORDER'
  ),
  (
    '2024-11-30',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    'ORDER'
  );
insert into conversions (date, advertiser_id, user_id, "value", rtb)
values (
    '2024-11-03',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    254.36,
    True
  ),
  (
    '2024-11-03',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    321.24,
    True
  ),
  (
    '2024-11-18',
    '124a2cfb-ae3b-42d4-9653-b59b26a37dab',
    '735b5495-5928-49e9-abeb-e631a73bdd4b',
    576.67,
    False
  ),
  (
    '2024-11-22',
    '404786b8-c890-4e2f-bc3d-246816e84749',
    '4e7d7f61-1217-49d2-bf93-eb3023d3f00d',
    123.04,
    True
  );
