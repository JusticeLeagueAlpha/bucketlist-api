'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Entry = models.entry;

const authenticate = require('./concerns/authenticate');

const index = (req, res, next) => {
  Entry.find()
    .then(entries => res.json({ entries }))
    .catch(err => next(err));
};

const indexUserEntries = (req, res, next) => {
  Entry.find({ _owner: req.currentUser._id })
    .then(entries => res.json({ entries }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Entry.findById(req.params.id)
    .then(entry => entry ? res.json({ entry }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let entry = Object.assign(req.body.entry, {
    _owner: req.currentUser._id,
  });
  Entry.create(entry)
    .then(entry => res.json({ entry }))
    .catch(err => next(err));
};

const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Entry.findOne(search)
    .then(entry => {
      if (!entry) {
        return next();
      }

      delete req.body._owner;  // disallow owner reassignment.
      return entry.update(req.body.entry)
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Entry.findOne(search)
    .then(entry => {
      if (!entry) {
        return next();
      }

      return entry.remove()
        .then(() => res.sendStatus(200));
    })
    .catch(err => next(err));
};

module.exports = controller({
  index,
  indexUserEntries,
  show,
  create,
  update,
  destroy,
}, { before: [
  { method: authenticate, except: ['index', 'show'] },
], });
