
<!DOCTYPE html>
<html>
  <script>
     function chan()
      {
         var rate5 = document.getElementById("rate-5");
         var rate4 = document.getElementById("rate-4");
         var rate3 = document.getElementById("rate-3");
         var rate2 = document.getElementById("rate-2");
         var rate1 = document.getElementById("rate-1");
         var msg;
         if(rate1.checked)
         {
          msg="Hate it";
         }
         if(rate2.checked)
         {
          msg="Don't like it";
         }
         if(rate3.checked)
         {
          msg="Nice";
         }
         if(rate4.checked)
         {
          msg="Awesome";
         }
         if(rate5.checked)
         {
          msg="Love it";
         }


         console.log(msg);
         document.getElementById("rating").value = msg;
     
      }
  </script>
    <head>
        <title>Feed back</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/feedback.css">
       
      </head>  
    <body>
        
     
        <h5>We'd love some feedback so we can improve our website</h5>
          <p class="para">How would you rate your experience?</p>

          <div class="container">
          <div class="star-widget">
            <input type="radio" name="rate" id="rate-5" onclick="chan()">
            <label for="rate-5" class="fa fa-star"> </label>
            <input type="radio" name="rate" id="rate-4" onclick="chan()">
            <label for="rate-4" class="fa fa-star"></label>
            <input type="radio" name="rate" id="rate-3" onclick="chan()">
            <label for="rate-3" class="fa fa-star"></label>
            <input type="radio" name="rate" id="rate-2" onclick="chan()">
            <label for="rate-2" class="fa fa-star"></label>
            <input type="radio" name="rate" id="rate-1" onclick="chan()">
            <label for="rate-1" class="fa fa-star"></label>
            <form action="AddFeedback" method="post">
              <header ></header>
             
              <div class="textarea">
                <textarea cols="30" placeholder="Write your experience in here.." name="msg"></textarea>
                <input id="rating" type="hidden" name="rating"  />
              </div>
                <br>
              <div class="e">
                <textarea cols="20" placeholder="E-mail address" name="email"></textarea>
              </div>

             <div class="btn">
                <button type="submit">post</button>
              </div>

            
            </form>
           
            <button id="view" class="button bttn">
                <a href="table.jsp" style="text-decoration: none"><b>view</b></a>
            
              </div>
             <% 
			String message = (String) request.getAttribute("msg");
			%>                  
			<%
			if (message == null) {
			%>
			<div class="besideemailbox" style="color: red"></div>
			<%
			} else if(message.trim().equals("Succesfull"))
			{%>
				<div class="besideemailbox" style="color: green"><%= message %></div>
			
				<% } else  {
			%>
			<div class="besideemailbox" style="color: red"><%= message %></div>
			<%
			}
			%>
            </div>
          </div>
   
    </body>
</html>