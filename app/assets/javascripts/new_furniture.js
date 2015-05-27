$(document).ready(function(){
	if($("#hideit")){
		$("#hideit").hide();
		$("#showitmain").hide();

		$('#hideitmain').on("click",function(){
              $("#hideit").show();
              $("#showitmain").show();
              $("#hideitmain").hide();
		});

		$("#showitmain").on("click", function(){
			$("#hideit").hide();
			$("#showitmain").hide();
			$("#hideitmain").show();
		});
	}
});

