$(function() {
    $('.fancybox').each(function(){
        $(this).fancybox({
            href: $(this).prop('href').replace('#', '-')
        });
    });

    $('.facebook-share-button').on('click', function(e){
        e.preventDefault();
        FB.ui({
            method: 'share',
            href: $(this).attr('data-url'),
            quote: $(this).attr('data-text')
        }, function(response){});
    });

    $('.js-fixed-thead').fixedThead();

    $('.js-contact-options-accordion').each(function(){
        $(this).find('h3').on('click', function(){
            $(this).parents('.contact-option').toggleClass('contact-option--active');
        });
    });
});
