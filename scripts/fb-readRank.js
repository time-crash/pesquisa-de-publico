document.addEventListener('DOMContentLoaded', function(event) {
	let i = 0;
	self.database.ref().child('plays')
		.orderByChild('playtime').limitToFirst(20).once("value").then(function(snap){
			snap.forEach(function(childSnap){
				createEntry(childSnap);
			});
			loadDone();
		});
});

function displayPlaytime(playtime){
	const milli = playtime % 1000;
	const sec = Math.floor((playtime % 60000) / 1000);
	const min = Math.floor((playtime / 60000));

	return `${min < 10 ? '0' : ''}${min}:${sec < 10 ? '0' : ''}${sec}.${milli}`
}

function createEntry(snap){
	const entry = tmpl("entry_tmpl", snap.val());
	const ol = document.getElementById('rank');

	ol.innerHTML += entry;
}

function loadDone(){
	let loading = document.getElementsByClassName('loading');
	while(loading.length > 0){
		loading[0].remove();
	}

	let hidden = document.getElementsByClassName('hide');
	while(hidden.length > 0){
		hidden[0].classList.remove('hide');
	}

	self.database.ref().child('plays')
		.on('child_added', function(snap){
			window.location.reload(true);
		});
}
