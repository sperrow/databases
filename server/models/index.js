var db = require('../db');


module.exports = {
  messages: {
    get: function (cb) {
    	var queryStr = "SELECT messages.*, users.username FROM messages, users \
    									WHERE messages.userid = users.userid";
    	db.query(queryStr, function(error, results) {
    		cb(results);
    	});
    }, // a function which produces all the messages
    post: function (params, cb) {
    	var queryStr = "INSERT INTO messages (text, userid, roomname) \
    									values (?, (SELECT userid FROM users WHERE username = ? limit 1), ?)";
    	db.query(queryStr, params, function(error, results) {
    		cb(results);
    	});
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function (cb) {
    	db.query("SELECT * from users", function(error, results) {
    		if(error) throw error;
    		cb(results);
    	});
    },
    post: function (params, cb) {
    	var queryStr = "INSERT INTO users (username) values (?)";
    	db.query(queryStr, params, function(error, results) {
    		cb(results);
    	});
    }
  }
};

