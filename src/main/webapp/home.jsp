<html>

<head>
<title>Food</title>
<link rel="stylesheet" href="style11.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="script.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<script>
	function bills() {
		var food1 = document.getElementById("id1").value;
		var food2 = document.getElementById("id2").value;
		var food3 = document.getElementById("id3").value;
		var food4 = document.getElementById("id4").value;
		var food5 = document.getElementById("id5").value;
		var food6 = document.getElementById("id6").value;
		var food7 = document.getElementById("id7").value;
		var food8 = document.getElementById("id8").value;
		var food9 = document.getElementById("id9").value;
		
		var qty1= document.getElementById("P01").value;
		var qty2= document.getElementById("P02").value;
		var qty3= document.getElementById("P03").value;
		var qty4= document.getElementById("B01").value;
		var qty5= document.getElementById("B02").value;
		var qty6= document.getElementById("B03").value;
		var qty7= document.getElementById("S01").value;
		var qty8= document.getElementById("S02").value;
		var qty9= document.getElementById("S03").value;
		let bill=[];
		
		if(qty1>0)
			{
			let foodn1={
				
				"Food_Name":food1,
				"Quantity":qty1,
				"Total":(qty1*1950)
				
			};
			bill.push(foodn1);
			
			}
		 if(qty2>0)
			{
			let foodn2={
					
					"Food_Name":food2,
					"Quantity":qty2,
					"Total":(qty2*2100)
					
				};
			bill.push(foodn2);
			}
		 if(qty3>0)
		{
		
			let foodn3={
					
					"Food_Name":food3,
					"Quantity":qty3,
					"Total":(qty3*2400)
					
				};
			bill.push(foodn3);
		}
		 if(qty4>0)
		{
		
			let foodn4={
					
					"Food_Name":food4,
					"Quantity":qty4,
					"Total":(qty4*1250)
					
				};
			bill.push(foodn4);
		}
		 if(qty5>0)
		{
			let foodn5={
					
					"Food_Name":food5,
					"Quantity":qty5,
					"Total":(qty5*1000)
					
				};
			bill.push(foodn5);
		}
		 if(qty6>0)
		{
		
			let foodn6={
					
					"Food_Name":food6,
					"Quantity":qty6,
					"Total":(qty6*950)
					
				};
			bill.push(foodn6);
		}
		 if(qty7>0)
		{
			let foodn7={
					
					"Food_Name":food7,
					"Quantity":qty7,
					"Total":(qty7*1000)
					
				};
			bill.push(foodn7);
		}
		 if(qty8>0)
		{
			let foodn8={
					
					"Food_Name":food8,
					"Quantity":qty8,
					"Total":(qty8*850)
					
				};
			bill.push(foodn8);
		}
		 if(qty9>0)
		{
			let foodn9={
					
					"Food_Name":food9,
					"Quantity":qty9,
					"Total":(qty9*650)
					
				};
			bill.push(foodn9);
		}
	
		
		
		sessionStorage.setItem('array',JSON.stringify(bill));
		window.location.href="bill.html";
		console.log(bill+"fhbfhdsb");		
	}
</script>
<body>
	<a class="btn btn-primary" href="feedback.jsp">View Feed Back</a>
	<form name="newform" method="post" action="">

		<div class="head1">
			<h1 class="heading">Food Cart</h1>
		</div>
		<div class="cat">
			<div class="row">

				<div class="col1">
					<img src="img/pizza.jpg"> <img src="img/bur.png"> <img
						src="img/san.jpg">
				</div>
			</div>
		</div>

		<table class="t1">
			<tr>
				<th></th>
				<th>PIZZA</th>
			</tr>
			<tr>
				<td>
					<center>
						<img src="img/chpi.jpg">
					</center>
				</td>
				<td>
					<center>
						<img src="img/cheese.webp">
					</center>
				</td>
				<td>
					<center>
						<img src="img/bbq1.jpg">
					</center>
				</td>
			</tr>
			<tr>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id1" id="id1"><option
								value="Devel Chicken Pizza" selected>Devel Chicken
								Pizza</option>
					</h4> </select> <br>
					<center>
						Rs.1950 <br> Quantity <select name="P01" id="P01">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>

				</td>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id2" id="id2"><option
								value="Double Cheese Pizza" selected>Double Cheese
								Pizza</option>
					</h4> </select> <br>
					<center>
						Rs.2100 <br> Quantity <select name="P02" id="P02">
							<option value="0" selected>0</option>
							<option value="1">1</option>1
							</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id3" id="id3"><option
								value="Tandoori Chicken Pizza" selected>Tandoori
								Chicken Pizza</option>
					</h4> </select> <br>
					<center>
						Rs.2400 <br> Quantity <select name="P03" id="P03">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
			<tr>
				<td colspan="3">
					<hr color="red" width="100%" size="5px">
				</td>
			</tr>

			</tr>
			<tr>

			</tr>
			<tr>
				<th></th>
				<th><br> BURGERS</th>
			</tr>
			<tr>
				<td><br>
					<center>
						<img src="img/bb.png">
					</center></td>
				<td>
					<center>
						<img src="img/che.jpg">
					</center>
				</td>
				<td>
					<center>
						<img src="img/cri.jpg">
					</center>
				</td>
			</tr>

			<tr>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id4" id="id4"><option value="King Burger"
								selected>King Burger</option>
					</h4> </select> <br>
					<center>
						Rs.1200 <br> Quantity <select name="B01" id="B01">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id5" id="id5"><option
								value="Chicken Burger" selected>Chicken Burger</option>
					</h4> </select> <br>
					<center>
						Rs.1000 <br> Quantity <select name="B02" id="B02">
							<option value="0" selected>0</option>
							<option value="1">1</option>1
							</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id6" id="id6"><option
								value="Crispy Chicken Burger" selected>Crispy Chicken
								Burger</option>
					</h4> </select> <br>
					<center>
						Rs.950 <br> Quantity <select name="B03" id="B03">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
			<tr>
				<td colspan="3">
					<hr color="red" width="100%" size="5px">
				</td>
			</tr>
			</tr>
			<tr>
				<th></th>
				<th><br> SANDWICHES</th>
			</tr>
			<tr>
				<td><br>
					<center>
						<img src="img/club.jpg">
					</center></td>
				<td>
					<center>
						<img src="img/ham.png">
					</center>
				</td>
				<td>
					<center>
						<img src="img/veg.jpg">
					</center>
				</td>
			</tr>
			<tr>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id7" id="id7"><option
								value="Club Sandwhich" selected>Club Sandwhich</option>
					</h4> </select> <br>
					<center>
						Rs.1000 <br> Quantity <select name="S01" id="S01">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id8" id="id8"><option value="Ham Sandwhich"
								selected>Ham Sandwhich</option>
					</h4> </select> <br>
					<center>
						Rs.800 <br> Quantity <select name="S02" id="S02">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
				<td>
					<center>
						<br>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star-half-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
					</center> <br>
					<h4 align="center">
						<select name="id9" id="id9"><option
								value="Veggie Sandwhich" selected>Veggie Sandwhich</option>
					</h4> </select> <br>
					<center>
						Rs.650 <br> Quantity <select name="S03" id="S03">
							<option value="0" selected>0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
					</center>
				</td>
			<tr>
				<td colspan="3">
					<hr color="red" width="100%" size="5px">
				</td>
			</tr>
			</tr>
		</table>
		<center>

			
		</center>


	</form>
	<button onclick="bills()">View Bill</button>
	<!--Footer-->



</body>

</html>
