		var scrollTimer = null;
		$(window).scroll(function() {
		    var top = $(document).scrollTop();
		    clearTimeout(scrollTimer);
		    scrollTimer = setTimeout(
		        function() 
		        {
		        	var bar = $( ".navbar" );
		        	var barImg = $( ".navbar-brand img" );
		        	var isSmaller = bar.hasClass( "smaller" );
		        	var p = $( "#firstPage" );
		        	// Get position
		        	var position = p.position();
		        	var pTop = position.top;
		        	var pBot = pTop + (4 * p.outerHeight(true) / 5) - bar.outerHeight(true);
		            console.log(top);
		            // Is it smaller?
		            if(top < pBot)
		            {
		            	if ( isSmaller )
		            		{
			                bar
			                	.animate({height:'100px'})
			                	.removeClass('smaller');
			                barImg
				                .animate({width:'45%'});
		            		}
		            }
		            else
		            {
		            	if ( !isSmaller )
		            		{
			                bar
			                	.animate({height:'20px'})
			                	.addClass('smaller');
			                barImg
			                	.animate({width:'20%'});
			                }
		            }
		        }, 100);
		    
		});
		//----------------------------------------------------------------------------------------
		$.fn.scrollView = function () {
		  return this.each(function () {
			  
			  var toTop = $(this).offset().top - 50;
			  
		    $('html, body').animate({
		      scrollTop: toTop
		    }, 1000);
		  });
		}
		
		/** Click: Navigate or Scroll */
		$('a.scroller').click(function (event) {
			  var too = $(this).attr('href');
			  
			  if ( too.startsWith("#") )
				  {
				  // Scroll
				  event.preventDefault();
				  $(too).scrollView();
				  }
			  else
				  {
				  var path = window.location.pathname;
				  path = path.split('/').pop();
				  //var n = path.lastIndexOf("/");
				  //if ( n > -1 ) path = 
				  console.log( "path:["+ path + "]:[" + too + "]=" + too.startsWith(path) );
				  if (too.startsWith(path))
					  {
					  // Starts with so scroll
					  // But change the href first
					  too = "#" + too.split('#').pop();
					  console.log("scroll->"+too);
					  event.preventDefault();
					  $(too).scrollView();
					  }
				  }
			  
			});
		
		//---------------------------------------------------------------------------------------

