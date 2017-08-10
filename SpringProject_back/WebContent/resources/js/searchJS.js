$(document).ready(function() {
	$('.btn_like').on('click', function() {
		id = $(this).attr('id');
		idx = id.substr(8);

		modalJson = getModalInfo(idx);

		JSON.stringify(modalJson);

		console.log(modalJson);

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

});