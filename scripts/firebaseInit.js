var self = this;

// Initialize Firebase
var config = {
	apiKey: "AIzaSyCtwuGmWZwkpNycdGDLCQov4OScd5r7lkI",
	authDomain: "timecrash-183921.firebaseapp.com",
	databaseURL: "https://timecrash-183921.firebaseio.com",
	projectId: "timecrash-183921",
	storageBucket: "timecrash-183921.appspot.com",
	messagingSenderId: "68886154815"
};
firebase.initializeApp(config);
self.database = firebase.database();
