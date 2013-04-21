<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
	<head>
		<title>IRES Search Form</title>
	</head>
	<body>
		<form action="search_results.html" method="post">
			<h3>Search Form</h3>
			<div>
				<label>Country</label>
				<input type="text" name="country" value="AU" />
			</div>
			<div>
				<select id="locationId" name="location">
					<option value="0">Select Destination...</option>
					<optgroup label="--------------------------------"></optgroup>
					<option value="Z4">Adelaide</option>
					<option value="T12349">Ayers Rock/Uluru</option>
					<option value="Z5">Brisbane</option>
					<option value="R51">Broome & Kimberley</option>
					<option value="R43">Cairns/Tropical North QLD</option>
					<option value="R108">Canberra</option>
					<option value="R47">Darwin/Top End</option>
					<option value="R34">Gold Coast</option>
					<option value="T619">Hobart</option>
					<option value="Z2">Melbourne</option>
					<option value="Z3">Perth</option>
					<option value="R107">Queensland Islands</option>
					<option value="R36">Sunshine Coast</option>
					<option value="Z1">Sydney</option>
					<option value="R106">Whitsundays</option>
				</select>
			</div>
			<div>
				<label>Check-in</label>
				<input type="text" name="checkin" value="2013-05-01" />
			</div>
			<div>
				<label>Check-out</label>
				<input type="text" name="checkout" value="2013-05-08" />
			</div>
			<div>
				<label>Nights</label>
				<input type="text" name="nights" value="7" />
			</div>
			<div>
				<label>Adults</label>
				<input type="text" name="adults" value="1" />
			</div>
			<div>
				<label>Children</label>
				<input type="text" name="children" value="0" />
			</div>
			<div>
				<input type="submit" value="  Go  " name="search" />
			</div>
		</form>
	</body>
</html>
