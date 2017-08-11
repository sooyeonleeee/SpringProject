$(document).ready(function() {
	$('.btn_like').on('click', function() {
		id = $(this).attr('id');
		idx = id.substr(8);

		modalJson = getModalInfo(idx);

		JSON.stringify(modalJson);

		console.log(modalJson);
		
		$.ajax({
			type: 'post',
			url: 'getModalJson',
			dataType: 'json',
			data: JSON.stringify(modalJson),
			contentType: 'application/json; charset=utf-8',
			success: function (data) {
				alert(data);
				console.log(data);
			},
			failure: function (errMsg) {
				alert(errMsg);
				console.log(errMsg);
			}
		});
		
	});

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