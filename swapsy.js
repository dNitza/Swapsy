// Generated by CoffeeScript 1.3.3
var Swapsy,
  __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

Swapsy = (function() {

  function Swapsy() {
    this.order = __bind(this.order, this);

    this.eliminateDuplicates = __bind(this.eliminateDuplicates, this);

    this.compare = __bind(this.compare, this);
    this.swapsied = new Array;
    this.elements = new Array;
  }

  Swapsy.prototype.compare = function(a, b) {
    return a - b;
  };

  Swapsy.prototype.eliminateDuplicates = function(arr) {
    var index, out, _i, _len;
    out = [];
    for (_i = 0, _len = arr.length; _i < _len; _i++) {
      index = arr[_i];
      if (out.indexOf(index) === -1) {
        out.push(index);
      }
    }
    return out;
  };

  Swapsy.prototype.order = function(unordered_items, options) {
    var elements, index, new_order, order, _i, _j, _len, _len1;
    for (_i = 0, _len = unordered_items.length; _i < _len; _i++) {
      elements = unordered_items[_i];
      this.elements.push($(elements).data(options.order));
    }
    order = this.eliminateDuplicates(this.elements.sort(this.compare));
    new_order = options.direction === 'asc' ? order.sort(this.compare) : order.reverse(this.compare);
    for (_j = 0, _len1 = new_order.length; _j < _len1; _j++) {
      index = new_order[_j];
      this.swapsied.push($('<div>').append($(unordered_items).closest("[data-" + options.order + "='" + index + "']").clone()).html());
    }
    $(options.container + ' ' + options.swapClass).remove();
    return $(options.container)[options.location](this.swapsied.join(" "));
  };

  return Swapsy;

})();

$.swapsy = function(args) {
  var defaults, options, swapsy, unordered_items;
  swapsy = new Swapsy;
  defaults = {
    container: '#swapsy',
    swapClass: '.item',
    location: 'append',
    direction: 'asc',
    order: 'order'
  };
  options = $.extend(defaults, args || {});
  unordered_items = $(options.container + ' ' + options.swapClass);
  return swapsy.order(unordered_items, options);
};
