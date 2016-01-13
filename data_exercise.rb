hash = {
	:wat => 
	  [ 0, 1, { :wut => 
	  			  [1, [
	  			  		[	0,
							1,
							2,
							3,
							4,
							5,
							6,
							7,
							8,

							{ :bbq =>
								"Yay you did it!"
							}
						]
					  ]
				   ]
	  		   }
	  	]
}



puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]