<form method="POST" action="postInput">
     
          Entry 1<br><div class="oke"><input type="text" name="myInputs"></div><br>
          Entro 1<br><div class="oke"><input type="text" name="myInputs"></div><br>
          Entri 1<br><div class="oke"><input type="text" name="myInputs"></div><br>
          Entru 1<br><div class="oke"><input type="text" name="myInputs"></div><br>
     <div id="dynamicInput">
     </div>
     <input type="button" value="Add another text input" onClick="addInput('dynamicInput');">
     <input type="submit" value="kirim">
</form>
<script type="text/javascript">
	var counter = 1;
var limit = 5;
function addInput(divName){
     if (counter == limit)  {
          alert("You have reached the limit of adding " + counter + " inputs");
     }
     else {
          var newdiv = document.createElement('div');
          newdiv.innerHTML = "Entry " + (counter + 1) + "<br><input type='text' name='myInputs'><br>Entro " + (counter + 1) + " <br><input type='text' name='myInputss'><br> Entri " + (counter + 1) + "<br><input type='text' name='myInputsss'> <br> Entru " + (counter + 1) + "<br><input type='text' name='myInputsss'>";
          document.getElementById(divName).appendChild(newdiv);
          counter++;
     }
}
</script>