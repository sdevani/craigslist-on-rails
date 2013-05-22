$(function() {
  $('.new_rating').
    on('ajax:success', function(event, json) {
      $(this).parents('tr').find('.item-rating').text(json['rating_average'])
    });
});
