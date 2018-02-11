# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## Notes

Feature: Create new achievement

  In order to keep an share my achievements
  As a user
  I want to create them

  Scenario: User creates new achievement
    Given I am a logged in user
    When I create new public achievement
    Then anybody can see this achievement online
