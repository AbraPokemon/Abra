# GroupProject - *Abra*

[![Circle CI](https://circleci.com/gh/AbraPokemon/KickStater/tree/master.svg?style=svg)](https://circleci.com/gh/AbraPokemon/KickStater/tree/master)
[![Coverage Status](https://coveralls.io/repos/AbraPokemon/KickStater/badge.png?branch=master&service=github)](https://coveralls.io/github/AbraPokemon/KickStater?branch=master)

**Abra** is a Ruby on Rails application that allows users to donate in charity group, create fundraising, join or donate to charity activity.

Submitted by: **AbraTeam**

## Wireframe [LINK](https://trello-attachments.s3.amazonaws.com/569074bbfe516b176a797295/5692417a37d1908b69967f8e/94f908cf5ddd556bc8b6013ccdc18e51/abra.pdf)

## User Stories

The following **required** functionality:

### User

* [ ] User can sign up by providing their email, password.
* [ ] User have to verify their account by email, phone after signing up.
* [ ] User can sign in with their email, password.
* [ ] User can sign in with facebook, twitter, google plus account.
* [ ] User can create charity event with name, location, time, story, limited participant, donation due date and required amount.
* [ ] User can edit event story which will introduce their event (video, image, ...)
* [ ] User can preview event before submit to system.
* [ ] User can join or donate to the charity event.
* [ ] User can comment on every events.
* [ ] User can rate event. Those rating will be use to calculate user reputaion.
* [ ] User can report event if he see that event is cheating. Those report will be use to calculate user reputaion.
* [ ] User can search event by name, location. Event will order by rating, newest event.
* [ ] User who created the event will be received money from event after donation due date.
* [ ] User can send message to another User.
* [ ] User will be received email when anyone join or donate to his event.
* [ ] User can see notification about who join or donate to his event.
* [ ] User can search charity group by group name, location. Charity group will order by rating.
* [ ] User can donate to the charity group.
* [ ] User can pay by using payment method like Visa, Master card, Internet banking.
* [ ] User can see the leaderboard of User reputation.

### Admin
* [ ] Admin can see list of event which has been submitted by User
* [ ] Admin can approve event to display it on system.
* [ ] Admin can disable any events.
* [ ] Admin can create/update/disable charity group.
* [ ] Admin can lock any account if he see any problem.
* [ ] Admin can send message to User.

### Coding
* [ ] Every features have to have scenario, unittest
* [ ] Test Coverage have to at least 85%.

The following **Optional** functionality:
* [ ] User should know how many their friends have done something in this site.
* [ ] System's going to update Hot Project by order comment, vote, funding,... This activity will be run by background processing and sent email to charities every month.

## Model ActiveRecord
![Video Walkthrough](http://i.imgur.com/aqvSETj.gif)

## License

    Copyright [2015] [AbraTeam]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
