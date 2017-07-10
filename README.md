# Drupal Elm Starter

[![Build Status](https://travis-ci.org/Gizra/drupal-elm-starter.svg?branch=master)](https://travis-ci.org/Gizra/drupal-elm-starter)

Drupal Elm Starter is a starter kit for setting up sites using Drupal as a backend and [Elm](http://elm-lang.org/) in the frontend.

For the backend, check the [server README.md](https://github.com/Gizra/drupal-elm-starter/blob/master/server/README.md)

For the frontend, check the [client README.md](https://github.com/Gizra/drupal-elm-starter/blob/master/client/README.md)

## Pusher
Editing an item produces pusher messages on two different channels: `general` 
and `private-general`. The private channel is only accessible by users with 
`access private fields` permission, and currently exposes the item's "Private 
note" field, which normal users can't access. 

Login for example with `admin` / `admin` to see the item private field, and get 
notifications through the private channel. 

## Credits

[Gizra](https://gizra.com)

## License

MIT
