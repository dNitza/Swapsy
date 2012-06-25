class Swapsy
	constructor: ->
		@swapsied = new Array
		@elements = new Array
		
	compare: (a, b) =>
		return a - b;  
		
	eliminateDuplicates: (arr) =>
		out = []
		out.push index for index in arr when out.indexOf(index) is -1
		out
				
	order: (unordered_items, options) =>
		@elements.push $(elements).data(options.order) for elements in unordered_items
		order = @.eliminateDuplicates(@elements.sort(@.compare))
		new_order = if options.direction == 'asc' then order.sort(@.compare) else order.reverse(@.compare)
		@swapsied.push $('<div>').append($(unordered_items).closest("[data-"+options.order+"='"+index+"']").clone()).html() for index in new_order
		$(options.container+' '+options.swapClass).remove()
		$(options.container)[options.location](@swapsied.join(" "))
		
$.swapsy = (args) ->
	swapsy = new Swapsy	
	defaults = {
		container : '#swapsy',
		swapClass : '.item',
		location  : 'append',
		direction : 'asc',
		order     : 'order'
	}
	options = $.extend(defaults, args || {})		
	unordered_items =  $(options.container+' '+options.swapClass)
	swapsy.order(unordered_items, options)