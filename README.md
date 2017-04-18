# Resources

- [Creating map](http://www.petercollingridge.co.uk/blog/extracting-map-information-svg)
- [Wizards of a coast pdf rulebook](https://www.wizards.com/avalonhill/rules/diplomacy.pdf)
- [World Cup Rules](http://tournaments.webdiplomacy.net/diplomacy-world-cup)
- [Provinces](https://www.lspace.org/games/afpdip/files/abb.html)

# Architecture

- Server-side
  - Microservices
  - Game logic - performing moves send by client
  - Communicator microserver
- Client-side
  - Map rendering (GET current map situation)
  - Sending player moves to server (POST orders)
  - Communicator clients

Each game should create new folder:

```
root games
|
|--Game instance
   |
   |-Config file
   |
   |-Turn files
     |
     |-Turn 1
     |-Turn 2
     |-Turn 3
     ...
```

It would allow client app easily display history of changes, and would make it easy to auto-save game. Files should update after performing orders in each turn.

Every game instance should have unique randomly-generated link - like in chat rooms.

# Roadmap of development:

- 0.1 Creating standard configuration
  - Map logic
  - What orders?
  - Spain / Denmark problem
  - Implementation of game rules
  - Most important for gameplay objects
- 0.2 Workable CLI implementation
  - Serialization ans saving game
  - Config file
  - Authentication for players
- 0.3 Server architecture
  - Wrapping working CLI with bunch of microservers
  - Designing and implementing server-side API
  - Creating client draft
- 0.4 Client
  - Making alpha front-end
  - Creating good authentication
  - Resolving potential concurrency problems
- 0.5 Communicator
  - Server for communication between players
  - Implementing communication to front-end
- 0.6 Liftin and refactoring
  - Refactoring Back-End
  - Lifting and refactoring of Front-End
- 1.0 RC!
