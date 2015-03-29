var models = require('../models');
var utils = require('../utils');
var bluebird = require('bluebird');

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get(function(results) {
        res.json(results);
      });
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      var params = [ req.body.text, req.body.username, req.body.roomname ];
      models.messages.post(params, function (results) {
        res.json(results);
      });
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      models.users.get(function(results) {
    	  res.json(results);
    	});
    },
    post: function (req, res) {
      var params = [ req.body[username] ];
    	models.users.post(params, function(results) {
        res.json(results);
      });
    }
  }
};
