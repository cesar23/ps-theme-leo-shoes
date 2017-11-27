//* custom js home-layout4 ************************/

$(document).ready(function(){
	// module block cart
	$('#newsletter_block_left').each(function(){
		$(this).find('.title_block').click(function(){
			if($("#newsletter_block_left").attr("class").indexOf("active") >= 0)
			{
				$("#newsletter_block_left").removeClass( "active" );

			}else{
				$("#newsletter_block_left").addClass( "active" );
			}
			$('#newsletter_block_left .block_content').slideToggle('slow');
		});
	});
});
