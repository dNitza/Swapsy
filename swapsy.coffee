class Swapsy
	constructor: ->
		@new = new Array
		@elements = new Array
		
	eliminateDuplicates: (arr) =>
		out = []
		out.push index for index in arr when out.indexOf(index) is -1
				
	order: (unordered_items, options) =>
		@elements.push $(elements).data('order') for elements in unordered_items
		order = @.eliminateDuplicates(@elements)
		order = if options.direction == 'asc' then order.sort() else order.reverse()
		@new.push $('<div>').append($(unordered_items).closest("[data-order='"+index+"']").clone()).html() for index in order
		$(options.container+' '+options.swapClass).remove()
		$(options.container)[options.location](@new.join(" "))
		
$.swapsy = (args) ->
	swapsy = new Swapsy	
	defaults = {
		container : '#swapsy',
		swapClass : '.item',
		location  : 'append',
		direction : 'asc'
	}
	options = $.extend(defaults, args || {})		
	unordered_items =  $(options.container+' '+options.swapClass)
	swapsy.order(unordered_items, options)
