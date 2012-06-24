Notify
======

Swapsy is a lightweight jQuery plugin (written in Coffee Script) to make re-ordering DOM elements a breeze.

t's super easy to implement, all you need to do is include jQuery and call _$.swapsy()_ and pass in the options you want (outlines below) whenever you want to re-order elements.

At the moment, Swapsy relies on the the _'data-order'_ attribute being present. You'll need to specify the order you want the elements to be put in using this attribute.

The intended use is for sorting something like news items by number of comments on the client side.

###Usage

####Basic HTML:

      <div id="swapsy">  
        <h3>Swap:</h3>
        <div class="item" data-order="4">4</div>
        <div class="item" data-order="1">1</div>
        <div class="item" data-order="5">5</div>
        <div class="item" data-order="2">2</div>        
        <div class="item" data-order="3">3</div>
        <div class="item" data-order="2">2</div>
      </div>

####Basic JS:

		$.swapsy({
			container : '#swapsy',
			direction : 'asc'
		});

###Options

####container (string): 
The containing element.
######default: '#swapsy'

####swapClass (string): 
The class of the elements you want to order.
######default: '.item'

####direction (string):
The direction you want to sort in (asc or desc).
######default: 'asc'

####location (string):
Where you want the elements to be placed (append or prepend) 
######default: 'append'

###Demo
[http://www.dnitza.com/freebie/swapsy/](http://www.dnitza.com/freebie/swapsy/)