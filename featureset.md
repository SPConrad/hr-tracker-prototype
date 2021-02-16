featureset/etc:

# outcomes

* get familiar with swiftui
* get familiar with combine

* bring some learnings back to the people

* publish to the app store

## MVP

# current HR

* number with animation, blipping circle
* graph?

## V2

# historical data

* last X measurements
  * time of day correlation
* lowest
* highest

# V3

* trend over time
* tagging
  * running, walking, biking, whatever

# V4

* iCloud/Health integration

# Tracking

* Trello?
* Github Project Board
* Notion

# CI

* Github Actions (highly recommended)
* TC
* Azure
* Something from a podcast

# Design

# Architecture

* "Regular Apple way"
  * Perhaps not as well documented

* MVVM
  * More suited for protocols
  * Moderately easier to mock data

# :music: folder structure music

* App
  * Models
  * Views
  * ViewModels
* Framework
  * ImageProcessing (?)
  * Camera (?)

Q's: What is a heartbeat?

Need a publisher to stream heartbeat events to processor

What refresh rate on camera do we need?

Let's assume 60fps

Average out hr per second, hr per 2 seconds, display that to user

Startup: create empty state with no HR, display
Have HR VM subscribe to Model's `avgHrDisplayed` item

