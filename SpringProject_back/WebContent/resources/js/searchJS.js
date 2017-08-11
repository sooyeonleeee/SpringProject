


function getModalInfo(modalIdx) {
	var reJson = new Object();

	origin = $('#' + 'spanOrigin' + modalIdx).text();
	destination = $('#' + 'spanDestination' + modalIdx).text();
	depDate = $('#' + 'inputDepDate' + modalIdx).val();
	arrDate = $('#' + 'inputArrDate' + modalIdx).val();
	goFlightCarrier = $('#' + 'bGoFlightCarrier' + modalIdx).text();
	goDuration = $('#' + 'pGoDuration' + modalIdx).text();
	goDepTime = $('#' + 'pGoDepTime' + modalIdx).text();
	goArrTime = $('#' + 'pGoArrTime' + modalIdx).text();
	goPrice = $('#' + 'inputGoPrice' + modalIdx).val();
	backFlightCarrier = $('#' + 'bBackFlightCarrier' + modalIdx).text();
	backDuration = $('#' + 'pBackDuration' + modalIdx).text();
	backDepTime = $('#' + 'pBackDepTime' + modalIdx).text();
	backArrTime = $('#' + 'pBackArrTime' + modalIdx).text();
	backPrice = $('#' + 'inputBackPrice' + modalIdx).val();

	reJson.origin = origin;
	reJson.destination = destination;
	reJson.depDate = depDate;
	reJson.arrDate = arrDate;
	reJson.goFlightCarrier = goFlightCarrier;
	reJson.goDuration = goDuration;
	reJson.goDepTime = goDepTime;
	reJson.goArrTime = goArrTime;
	reJson.goPrice = goPrice;
	reJson.backFlightCarrier = backFlightCarrier;
	reJson.backDuration = backDuration;
	reJson.backDepTime = backDepTime;
	reJson.backArrTime = backArrTime;
	reJson.backPrice = backPrice;

	return reJson;
}


$(document).ready(function() {
	$('.btn_like').on('click', function() {
		alert("aaaa");
		id = $(this).attr('id');
		idx = id.substr(8);

		modalJson = getModalInfo(idx);

		JSON.stringify(modalJson);

		console.log(modalJson);

		$.ajax({
			type : 'post',
			url : 'getModalJson',
			dataType : 'json',
			data : JSON.stringify(modalJson),
			contentType : 'application/json; charset=utf-8',
			success : function(data) {
				alert(data);
				console.log(data);
			},
			failure : function(errMsg) {
				alert(errMsg);
				console.log(errMsg);
			}
		});

	});
	$('input[name=priceRadio]').change(function(){
		alert("cgsdfasdf");
		resultFilter(this);
	});

window.resultFilter = function(cb) {
	dOrA = cb.id;

	li = getList();
	if (dOrA == "desc") {
		descLi = getDesc(li);

		var rvo = [];
		for (var i of descLi) {
			rvo.push(getModalInfo(i.id)); }

		console.log(rvo);

		$.ajax({
			type : 'post',
			url : 'getRvoLi',
			data : JSON.stringify(rvo),
			contentType : 'application/json; charset=utf-8',
			success : function(data) {
				alert(data);
			},
			failure : function(errMsg) {
				alert(errMsg);
			}
		});

	} else {
		alert("asc");
		ascLi = getAsc(li);

	}
}

function getList() {
	var items = []

	priceList = document.getElementsByClassName("totalPrice");

	for (var a of priceList) {
		price = a.innerText;
		items.push({
			id : a.id,
			price : price
		}); }

	return items;
}

function getDesc(li) {
	sorted = li.sort(function(a, b) {
		return a.price - b.price;
	});
	return sorted;
}

function getAsc(li) {
	sorted = li.sort(function(a, b) {
		return b.price - a.price;
	});
	return sorted;
}

	function getModalInfo(modalIdx) {
		var reJson = new Object();

		origin = $('#' + 'spanOrigin' + modalIdx).text();
		destination = $('#' + 'spanDestination' + modalIdx).text();
		depDate = $('#' + 'inputDepDate' + modalIdx).val();
		arrDate = $('#' + 'inputArrDate' + modalIdx).val();
		goFlightCarrier = $('#' + 'bGoFlightCarrier' + modalIdx).text();
		goDuration = $('#' + 'pGoDuration' + modalIdx).text();
		goDepTime = $('#' + 'pGoDepTime' + modalIdx).text();
		goArrTime = $('#' + 'pGoArrTime' + modalIdx).text();
		goPrice = $('#' + 'inputGoPrice' + modalIdx).val();
		backFlightCarrier = $('#' + 'bBackFlightCarrier' + modalIdx).text();
		backDuration = $('#' + 'pBackDuration' + modalIdx).text();
		backDepTime = $('#' + 'pBackDepTime' + modalIdx).text();
		backArrTime = $('#' + 'pBackArrTime' + modalIdx).text();
		backPrice = $('#' + 'inputBackPrice' + modalIdx).val();
		
		if (backFlightCarrier.length==0) {
			backFlightCarrier = "none";
			backDuration ="11111111";
			backDepTime = "backDepTime";
			backArrTime = "backArrTime";
			backPrice = "2222222";
		}
		
		reJson.origin = origin;
		reJson.destination = destination;
		reJson.depDate = depDate;
		reJson.arrDate = arrDate;
		reJson.goFlightCarrier = goFlightCarrier;
		reJson.goDuration = goDuration.slice(0, goDuration.length-1);
		reJson.goDepTime = goDepTime;
		reJson.goArrTime = goArrTime;
		reJson.goPrice = goPrice;
		reJson.backFlightCarrier = backFlightCarrier;
		reJson.backDuration = backDuration.slice(0, backDuration.length-1);
		reJson.backDepTime = backDepTime;
		reJson.backArrTime = backArrTime;
		reJson.backPrice = backPrice;

		return reJson;
	}

});