var self = this;

$(document).ready(function(){
	// Initialize Firebase
	var config = {
		apiKey: "AIzaSyDhCv8om4JvYQYiu56K9prOdiegojYMweA",
		authDomain: "timecrashdisplay.firebaseapp.com",
		databaseURL: "https://timecrashdisplay.firebaseio.com",
		projectId: "timecrashdisplay",
		storageBucket: "timecrashdisplay.appspot.com",
		messagingSenderId: "186914172885"
	};
	firebase.initializeApp(config);
	self.database = firebase.database();
});

var validateEmail = function (email) {
	var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(email);
}

var submitToFirebase = function(){
	dismissAll();
	var emailData = $('#edtEmail').val();
	if (!validateEmail(emailData)) {
		displayEmailError();
		return;
	}

	var entry = {
		email: emailData
	}

	var newKey = self.database.ref().child('notifyUser').push().key;
	var updates = {};
	updates['/notifyUser/'+newKey] = entry;

	self.database.ref().update(updates);
	displaySuccess();
	document.getElementById('edtEmail').value='';

	setTimeout(function(){
		dismissAll();
	}, 3000);
};

var displaySuccess = function(){
	$(".message.success").text("Email cadastrado.").fadeIn();
}
var displayEmailError = function(){
	$(".message.error").text("Email invalido.").fadeIn();
}
var dismissAll = function(){
	$('.message').fadeOut(100);
}



$('#btnSubmit').click(submitToFirebase);
