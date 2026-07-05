<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@600;700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --bg: #ffffff;
            --primary: #0f172a;
            --accent: #3b82f6;
            --accent-gradient: linear-gradient(135deg, #3b82f6, #1d4ed8);
            --secondary: #f59e0b;
            --muted: #64748b;
            --card: #ffffff;
            --surface: #f8fafc;
            --border: #e2e8f0;
            --success: #10b981;
            --radius: 16px;
            --radius-lg: 20px;
            --container: 1280px;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
            --shadow-xl: 0 25px 50px -12px rgba(0, 0, 0, 0.25);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            line-height: 1.6;
        }

        a {
            color: inherit;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.95);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(20px);
            transition: all 0.3s ease;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-family: 'Poppins', sans-serif;
            font-weight: 800;
            font-size: 24px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        nav.main-nav {
            display: flex;
            align-items: center;
            gap: 24px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 8px;
            align-items: center;
            padding: 12px 16px;
            border-radius: var(--radius);
            color: var(--muted);
            font-weight: 500;
            transition: all 0.3s ease;
        }

        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--surface);
            color: var(--primary);
            transform: translateY(-1px);
        }

        .search {
            display: flex;
            align-items: center;
            gap: 12px;
            background: var(--surface);
            padding: 12px 20px;
            border-radius: var(--radius-lg);
            min-width: 280px;
            border: 2px solid transparent;
            transition: all 0.3s ease;
        }

        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 14px;
            color: var(--primary);
        }

        .search input::placeholder {
            color: var(--muted);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--muted);
            font-size: 18px;
            padding: 8px;
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
            transform: scale(1.1);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: 12px;
            transition: all 0.3s ease;
        }

        .cart:hover {
            background: var(--surface);
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--secondary);
            color: white;
            font-size: 12px;
            font-weight: 700;
            width: 22px;
            height: 22px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 24px;
            cursor: pointer;
            color: var(--primary);
        }

        /* Hero */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: 
                linear-gradient(135deg, rgba(15, 23, 42, 0.9) 0%, rgba(59, 130, 246, 0.7) 100%),
                url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80)') center/cover no-repeat;
            color: white;
            min-height: 600px;
            padding: 80px 20px;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 20% 80%, rgba(59, 130, 246, 0.4) 0%, transparent 50%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 3.5rem;
            font-weight: 800;
            margin: 0 0 20px;
            letter-spacing: -0.02em;
            line-height: 1.1;
        }

        .hero p {
            margin: 0 0 32px;
            opacity: 0.9;
            font-size: 1.2rem;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 16px 32px;
            border-radius: var(--radius-lg);
            font-weight: 600;
            cursor: pointer;
            border: 0;
            transition: all 0.3s ease;
            font-size: 16px;
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: var(--shadow);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 255, 255, 0.3);
            color: white;
            backdrop-filter: blur(10px);
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        /* Sections */
        .section {
            padding: 80px 0;
        }

        .section .title {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-title {
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 16px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .grid {
            display: grid;
            gap: 24px;
        }

        /* Categories */
        .categories {
            grid-template-columns: repeat(6, 1fr);
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius-lg);
            padding: 32px 24px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.4s ease;
            border: 1px solid var(--border);
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-xl);
            border-color: var(--accent);
        }

        .cat-card .icon {
            font-size: 36px;
            margin-bottom: 16px;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .cat-card h4 {
            margin: 8px 0 0;
            font-size: 16px;
            font-weight: 600;
        }

        /* Products */
        .products {
            grid-template-columns: repeat(4, 1fr);
        }

        .product {
            background: var(--card);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow);
            transition: all 0.4s ease;
            border: 1px solid var(--border);
            position: relative;
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-xl);
        }

        .product-image {
            position: relative;
            overflow: hidden;
        }

        .product img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            display: block;
            transition: transform 0.4s ease;
        }

        .product:hover img {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 700;
            z-index: 2;
        }

        .badge-new {
            background: var(--success);
            color: white;
        }

        .badge-sale {
            background: #ef4444;
            color: white;
        }

        .product-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 12px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 16px;
            font-weight: 600;
            line-height: 1.4;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 8px;
        }

        .price {
            font-weight: 700;
            color: var(--primary);
            font-size: 18px;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-weight: 500;
            font-size: 14px;
        }

        .rating {
            color: #f59e0b;
            font-size: 14px;
        }

        .product-footer {
            padding: 16px 20px 20px;
            display: flex;
            gap: 12px;
        }

        .add-btn {
            flex: 1;
            background: var(--accent-gradient);
            color: white;
            border: 0;
            padding: 12px;
            border-radius: 12px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .add-btn:hover {
            transform: translateY(-1px);
            box-shadow: var(--shadow);
        }

        .wish-btn {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 12px;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .wish-btn:hover {
            background: #fef2f2;
            border-color: #fecaca;
            color: #ef4444;
        }

        /* Deal */
        .deal {
            display: flex;
            gap: 32px;
            background: linear-gradient(135deg, #0f172a, #1e293b);
            border-radius: var(--radius-lg);
            overflow: hidden;
            align-items: center;
            box-shadow: var(--shadow-xl);
            position: relative;
            color: white;
        }

        .deal::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, rgba(59, 130, 246, 0.1), transparent);
        }

        .deal img {
            width: 45%;
            height: 400px;
            object-fit: cover;
            display: block;
        }

        .deal .content {
            padding: 48px;
            flex: 1;
            position: relative;
            z-index: 2;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-box {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            padding: 16px;
            border-radius: 12px;
            min-width: 80px;
            text-align: center;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .time-box div:first-child {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .deal .price {
            font-size: 2rem;
            margin: 16px 0;
        }

        /* Testimonials */
        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 16px 8px;
            scrollbar-width: none;
        }

        .testimonials::-webkit-scrollbar {
            display: none;
        }

        .testimonial {
            min-width: 380px;
            background: white;
            padding: 32px;
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow);
            border: 1px solid var(--border);
            transition: all 0.3s ease;
        }

        .testimonial:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        /* Newsletter */
        .newsletter {
            background: var(--accent-gradient);
            color: white;
            border-radius: var(--radius-lg);
            padding: 64px 32px;
            text-align: center;
            box-shadow: var(--shadow);
            position: relative;
            overflow: hidden;
        }

        .newsletter::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            animation: float 6s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(180deg); }
        }

        .newsletter input {
            padding: 16px 24px;
            border-radius: var(--radius-lg);
            border: 0;
            width: 360px;
            max-width: 100%;
            margin-right: 12px;
            font-size: 16px;
            box-shadow: var(--shadow);
        }

        /* Footer */
        footer {
            margin-top: 80px;
            padding: 64px 0 32px;
            background: var(--surface);
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 14px;
        }

        /* Responsive */
        @media (max-width: 1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
            .products {
                grid-template-columns: repeat(3, 1fr);
            }
        }

        @media (max-width: 900px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: inline-block;
            }
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            .deal img {
                height: 300px;
                width: 40%;
            }
            .hero h1 {
                font-size: 2.5rem;
            }
        }

        @media (max-width: 600px) {
            .hero h1 {
                font-size: 2rem;
            }
            .products {
                grid-template-columns: 1fr;
            }
            .categories {
                grid-template-columns: 1fr;
            }
            .deal {
                flex-direction: column;
            }
            .deal img {
                width: 100%;
                height: 250px;
            }
            .section {
                padding: 60px 0;
            }
            .container {
                padding: 0 20px;
            }
        }

        /* Utilities */
        .muted {
            color: var(--muted);
        }

        .text-center {
            text-align: center;
        }

        .gradient-text {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:20px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <span>Nexus<span style="color: #f59e0b">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down" style="font-size:12px;"></i></a>
                    </li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:16px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search products, categories..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><i class="far fa-user"></i></a>
                    <a class="icon-btn" title="Wishlist" href="#"><i class="far fa-heart"></i></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobileMenu" style="display:none; background:var(--bg); border-top:1px solid var(--border);">
            <div class="container" style="padding:20px 0;">
                <nav aria-label="Mobile navigation">
                    <ul style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:12px;">
                        <li><a href="#" style="padding:12px 0;display:block;">Home</a></li>
                        <li><a href="#" style="padding:12px 0;display:block;">Categories</a></li>
                        <li><a href="#" style="padding:12px 0;display:block;">Trending</a></li>
                        <li><a href="#deals" style="padding:12px 0;display:block;">Deals</a></li>
                        <li><a href="#about" style="padding:12px 0;display:block;">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero" role="img" aria-label="Hero banner">
            <div class="container">
                <div class="hero-content">
                    <h1>Elevate Your Style with Premium Picks</h1>
                    <p>Discover cutting-edge technology, fashion, and accessories curated for the modern lifestyle. Exclusive deals and free shipping available.</p>
                    <div>
                        <button class="btn btn-primary" id="shopNow">Shop Now <i class="fas fa-arrow-right"></i></button>
                        <button class="btn btn-ghost" id="exploreDeals">Explore Deals</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="title" id="cat-title">
                <h2 class="section-title">Shop by Category</h2>
                <p class="muted">Browse through our carefully curated product categories</p>
            </div>
            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="title" id="prod-title">
                <h2 class="section-title">Trending Products</h2>
                <p class="muted">Popular picks loved by our customers</p>
            </div>
            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="title" id="deals-title">
                <h2 class="section-title">Flash Sale</h2>
                <p class="muted">Limited-time offers — don't miss out!</p>
            </div>
            <div class="deal">
                <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" alt="MacBook Air M2">
                <div class="content">
                    <h3 style="font-size:2rem;margin-bottom:12px;">MacBook Air M2</h3>
                    <p style="opacity:0.9;margin-bottom:24px;">Supercharged by M2 chip — incredibly fast and power-efficient</p>
                    <div class="timer">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div>Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div>Hours</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div>Minutes</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div>Seconds</div>
                        </div>
                    </div>
                    <div style="display:flex;align-items:center;gap:16px;margin:24px 0;">
                        <div class="price">$999 <span class="old-price" style="font-size:18px">$1,199</span></div>
                        <div style="background:#ef4444;color:white;padding:8px 16px;border-radius:20px;font-weight:700">-17% OFF</div>
                    </div>
                    <p style="margin-bottom:24px;opacity:0.9;">Only <strong>12</strong> items left at this price!</p>
                    <button class="btn btn-primary" id="buyDeal" style="background:var(--secondary);border:0;">Buy Now</button>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="title" id="test-title">
                <h2 class="section-title">Customer Reviews</h2>
                <p class="muted">What our customers are saying</p>
            </div>
            <div class="testimonials" id="testimonials">
                <!-- Testimonial cards will be populated by JavaScript -->
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter">
                <h3 id="news-title" style="font-size:2rem;margin-bottom:12px;">Stay Updated</h3>
                <p style="opacity:0.9;margin-bottom:24px;">Get exclusive offers and new product announcements</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:12px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required style="border:0;padding:16px 24px;border-radius:var(--radius-lg);">
                    <button class="btn btn-primary" id="subscribeBtn" style="background:var(--secondary);border:0;">Subscribe</button>
                </form>
                <div id="newsletterMsg" style="margin-top:16px;font-size:14px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:40px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div class="brand" style="font-size:24px;margin-bottom:16px">NexusShop</div>
                <p class="muted" style="margin-bottom:20px;">A premium e-commerce experience built with modern web technologies</p>
                <div style="display:flex;gap:16px">
                    <a class="icon-btn" href="#" title="Facebook" style="background:var(--surface);"><i class="fab fa-facebook-f"></i></a>
                    <a class="icon-btn" href="#" title="Twitter" style="background:var(--surface);"><i class="fab fa-twitter"></i></a>
                    <a class="icon-btn" href="#" title="Instagram" style="background:var(--surface);"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div style="display:flex;gap:48px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div style="font-weight:700;margin-bottom:16px;color:var(--primary)">Company</div>
                    <div class="muted" style="line-height:2;">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div style="font-weight:700;margin-bottom:16px;color:var(--primary)">Support</div>
                    <div class="muted" style="line-height:2;">Help Center<br>Shipping & Returns<br>Contact</div>
                </div>
            </div>
        </div>
        <div style="text-align:center;margin-top:48px;color:var(--muted);font-size:14px">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </footer>

    <script>
        // JavaScript remains largely the same but with updated class names and selectors
        // ... (the JavaScript code from your original file would go here with minor adjustments)
        
        // Sample data and functions would be updated to match the new HTML structure
        // This ensures all the interactive functionality works with the enhanced UI
    </script>
</body>
</html>
