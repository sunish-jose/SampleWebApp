/*
 * Goes to home.jsp, ahref redirect to Net Receiver, Net Payer, Missing Agreement
 * MIssing invoice, Un-reconciled invoice, Incoming missing CN
 */
$(function() {

	$('#cycleCalendar tr').click(function() {
		alert('I am clickable table')
	});

	$('#txb1').click(function() {
		window.location.href = "positionAdmin";
	});

	$('#rxr1').click(function() {
		window.location.href = "position";
	});

	$('#rxr2').click(function() {
		window.location.href = "position";
	});

	$('#payer1').click(function() {
		window.location.href = "position";
	});

	$('#payer2').click(function() {
		window.location.href = "position";
	});

	$('#agrement1').click(function() {
		window.location.href = "position";
	});
	$('#invoice1').click(function() {
		window.location.href = "position";
	});
	$('#invoice2').click(function() {
		window.location.href = "position";
	});
	$('#uinvoice1').click(function() {
		window.location.href = "position";
	});
	$('#uinvoice2').click(function() {
		window.location.href = "position";
	});
	$('#cn1').click(function() {
		window.location.href = "position";
	});
	$('#cn2').click(function() {
		window.location.href = "position";
	});

});

$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})

