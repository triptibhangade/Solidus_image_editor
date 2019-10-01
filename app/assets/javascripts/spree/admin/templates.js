$(document).ready(function(){
	changeNumber();
	changeRange();
});

function changeNumber(){
	$('.form-content input[type="number"]').on('input', function(){
	  var switchAttr = $(this).attr('data-range');
	  var previewShape = $('.preview-shape');
	  var valueSpan = $(this).closest('.form-group').find('.valueShow');
	  var prevValue = $(this).val();
	  previewShape.css('display', 'block');
	  switch(switchAttr){
	    case 'width':
	    previewShape.css('width', `${prevValue}px`);
	    valueSpan.html(`${prevValue}px`);
	    $(this).val(prevValue);
	    break;

	    case 'height':
	    previewShape.css('height', `${prevValue}px`);
	    valueSpan.html(`${prevValue}px`);
	    break;
	  }
	});
}
function changeRange(){
	$('.form-content input[type="range"]').on('input', function(){
	    var switchAttr = $(this).attr('data-range');
	    var previewShape = $('.preview-shape');
	    var valueSpan = $(this).closest('.form-group').find('.valueShow');
	    var prevValue = $(this).val();
	    previewShape.css('display', 'block');
	    switch(switchAttr){
	      case 'radius':
	        previewShape.css('border-radius', `${prevValue}px`);
	        valueSpan.html(`${prevValue}px`);
	      break;

	      case 'resolution':
	        valueSpan.html(`${prevValue}`);
	      break;
	    }
	});
}