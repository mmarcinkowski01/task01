<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadanie 01 - Webmaster</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/tiny-slider.css">
    <link rel="stylesheet" href="./css/theme.css">
</head>

<body>
    <div id="app">
        <h2>Best sellers</h2>
            <div class="slider">
                {foreach from=$products name=name item=product}
            <div class="product">
                    <div class="img-box"><img src=".{$product.img_url}" alt="{$product.link_rewrite}"></div>
                    <p class="product-name">{$product.name}</p>
                    <div class="price-box"><p class="product-price">{if $product.specific_price}<span style='color: red; font-size: 20px'>{display_price($product)}</span> <s>{$product.specific_price.priceWithoutReduction}.00€</s>{else}{display_price($product)}{/if}</p></div>
                </div>
                {/foreach}
            </div>
        </div>
    </div>
    <script src="./js/jquery-3.6.0.slim.min.js"></script>
    <script src="./js/tiny-slider.js"></script>
    <script src="./js/theme.js"></script>
</body>

</html>