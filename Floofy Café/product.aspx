<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <!-- Add jQuery library -->
	<script type="text/javascript" src="../lib/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="../lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="../source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="../source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="../source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="../source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".fancybox-thumb").fancybox({
                prevEffect: 'none',
                nextEffect: 'none',
                helpers: {
                    title: {
                        type: 'outside'
                    },
                    thumbs: {
                        width: 50,
                        height: 50
                    }
                }
            });
        });
    </script>
    <style>
        #sidebar {
            width: 240px;
            float: left;
            padding: 40px;
            background: #32251b;
            color: #e1d2c7;
        }

        #content {
            width: 760px;
            margin: 0 0 0 355px;
            padding: 40px;
            background: #fff;
        }
    </style>
    <div id="sidebar">
        <h3>MENU
        </h3>
        <p>
            咖啡專區
        </p>
        <p>
            周邊商品
        </p>
    </div>
    <div id="content">
        <img alt="" src="images/product_menu1.jpg" style="width: 100%; height: 503px" />
        <img alt="" src="images/product_coffee1.jpg" style="width: 100%; height: 100%" />&nbsp;&nbsp;
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/menu_img_484.jpg" title="胡桃布朗尼風味拿鐵Crunchy Walnut Brownie Latte">
            <img src="images/product/Crunchy_Walnut_Brownie_Latte.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/menu_img_483.jpg" title="奶油雙重奏拿鐵Caramel Cream and Maple Syrup">
            <img src="images/product/Caramel_Cream_and_Maple_Syrup.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/menu_img_477.jpg" title="南瓜拿鐵Coffee Latte With Pumpkin Syru">
            <img src="images/product/Coffee_Latte_With_Pumpkin_Syru.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/menu_img_471.jpg" title="愛爾蘭摩卡咖啡(不含酒精)Irish Coffee Mocha">
            <img src="images/product/Irish_Coffee_Mocha.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/menu_img_56.jpg" title="濃縮咖啡ESPRESSO">
            <img src="images/product/ESPRESSO.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/D(2).jpg" title="怡客經典咖啡IKARI BLENDED COFFEE">
            <img src="images/product/IKARI_BLENDED_COFFEE.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/D(3).jpg" title="拿鐵咖啡CAFÉ LATTE">
            <img src="images/product/CAFÉ_LATTE.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/menu_img_50.jpg" title="卡布奇諾咖啡CAPPUCCINO">
            <img src="images/product/CAPPUCCINO.jpg" alt="" width="32%" />
        </a>
        <a class="fancybox-thumb" rel="fancybox-thumb" href="images/product/D(5).jpg" title="低因咖啡DECAFFEINATED">
            <img src="images/product/DECAFFEINATED.jpg" alt="" width="32%" />
        </a>
    </div>
</asp:Content>

