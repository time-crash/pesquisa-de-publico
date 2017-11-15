var validateEmail = function (email) {
	var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(email);
}

var submitToFirebase = function(){
	dismissAll();
	const emailData = $('#edtEmail').val();
	if (!validateEmail(emailData)) {
		displayEmailError();
		return;
	}

	const entry = {
		email: emailData
	}

	const newKey = self.database.ref().child('notifyUser').push().key;
	let updates = {};
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
