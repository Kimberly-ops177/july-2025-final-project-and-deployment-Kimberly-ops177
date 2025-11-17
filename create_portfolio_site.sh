#!/bin/bash

# ==========================================
# PORTFOLIO WEBSITE - COMPLETE BUILD SCRIPT
# Creates all remaining files for the project
# ==========================================

echo "íº€ Creating Portfolio Website - All Files"
echo "=========================================="

# Ensure we're in the portfolio-website directory
if [ ! -d "css" ] || [ ! -d "js" ]; then
    echo "âŒ Error: Please run this script from the portfolio-website directory"
    echo "   Make sure css/ and js/ folders exist"
    exit 1
fi

# ==========================================
# CREATE SERVICES PAGE
# ==========================================
echo "í³„ Creating services.html..."

cat > services.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Professional web development services and packages">
    <title>Services | Web Developer Portfolio</title>
    
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/animations.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Navigation Header -->
    <header class="main-header">
        <nav class="navbar">
            <div class="container">
                <div class="nav-wrapper">
                    <a href="index.html" class="logo">
                        <span class="logo-text">&lt;Dev/&gt;</span>
                    </a>
                    
                    <button class="menu-toggle" aria-label="Toggle navigation menu" aria-expanded="false">
                        <span class="hamburger"></span>
                    </button>
                    
                    <ul class="nav-menu">
                        <li><a href="index.html" class="nav-link">Home</a></li>
                        <li><a href="about.html" class="nav-link">About</a></li>
                        <li><a href="projects.html" class="nav-link">Projects</a></li>
                        <li><a href="services.html" class="nav-link active">Services</a></li>
                        <li><a href="contact.html" class="nav-link btn-contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Page Header -->
    <section class="page-header">
        <div class="container">
            <h1 class="page-title animate-fadeInUp">Services & Pricing</h1>
            <p class="page-subtitle animate-fadeInUp">
                Choose the perfect package for your project needs
            </p>
        </div>
    </section>

    <!-- Services Overview -->
    <section class="services-overview">
        <div class="container">
            <div class="services-intro">
                <h2 class="section-title">What I Offer</h2>
                <p class="section-text">
                    From simple landing pages to complex web applications, I provide 
                    comprehensive web development services tailored to your needs. 
                    Every project includes responsive design, clean code, and ongoing support.
                </p>
            </div>
            
            <div class="service-features">
                <div class="feature-item animate-on-scroll">
                    <div class="feature-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <div class="feature-content">
                        <h3 class="feature-title">Responsive Design</h3>
                        <p class="feature-desc">Mobile-first approach ensuring perfect display on all devices</p>
                    </div>
                </div>
                
                <div class="feature-item animate-on-scroll">
                    <div class="feature-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <div class="feature-content">
                        <h3 class="feature-title">SEO Optimized</h3>
                        <p class="feature-desc">Built with search engine optimization best practices</p>
                    </div>
                </div>
                
                <div class="feature-item animate-on-scroll">
                    <div class="feature-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <div class="feature-content">
                        <h3 class="feature-title">Fast Performance</h3>
                        <p class="feature-desc">Optimized for speed and excellent user experience</p>
                    </div>
                </div>
                
                <div class="feature-item animate-on-scroll">
                    <div class="feature-icon">
                        <i class="fas fa-check-circle"></i>
                    </div>
                    <div class="feature-content">
                        <h3 class="feature-title">Ongoing Support</h3>
                        <p class="feature-desc">Post-launch support and maintenance included</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Pricing Cards -->
    <section class="pricing-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Service Packages</h2>
                <p class="section-subtitle">Flexible options to fit your budget and timeline</p>
            </div>
            
            <div class="pricing-grid">
                <!-- Basic Package -->
                <div class="pricing-card animate-on-scroll">
                    <div class="pricing-header">
                        <div class="pricing-icon">
                            <i class="fas fa-rocket"></i>
                        </div>
                        <h3 class="pricing-title">Starter</h3>
                        <p class="pricing-subtitle">Perfect for small businesses</p>
                    </div>
                    <div class="pricing-price">
                        <span class="currency">$</span>
                        <span class="amount">1,500</span>
                        <span class="period">/ project</span>
                    </div>
                    <ul class="pricing-features">
                        <li><i class="fas fa-check"></i> Up to 5 pages</li>
                        <li><i class="fas fa-check"></i> Responsive design</li>
                        <li><i class="fas fa-check"></i> Contact form</li>
                        <li><i class="fas fa-check"></i> Basic SEO</li>
                        <li><i class="fas fa-check"></i> 2 rounds of revisions</li>
                        <li><i class="fas fa-check"></i> 30 days support</li>
                        <li class="disabled"><i class="fas fa-times"></i> Custom functionality</li>
                        <li class="disabled"><i class="fas fa-times"></i> CMS integration</li>
                    </ul>
                    <a href="contact.html" class="btn btn-outline btn-block">Get Started</a>
                </div>
                
                <!-- Professional Package -->
                <div class="pricing-card featured animate-on-scroll">
                    <div class="pricing-badge">Most Popular</div>
                    <div class="pricing-header">
                        <div class="pricing-icon">
                            <i class="fas fa-star"></i>
                        </div>
                        <h3 class="pricing-title">Professional</h3>
                        <p class="pricing-subtitle">For growing businesses</p>
                    </div>
                    <div class="pricing-price">
                        <span class="currency">$</span>
                        <span class="amount">3,500</span>
                        <span class="period">/ project</span>
                    </div>
                    <ul class="pricing-features">
                        <li><i class="fas fa-check"></i> Up to 10 pages</li>
                        <li><i class="fas fa-check"></i> Advanced responsive design</li>
                        <li><i class="fas fa-check"></i> Contact & custom forms</li>
                        <li><i class="fas fa-check"></i> Advanced SEO</li>
                        <li><i class="fas fa-check"></i> 4 rounds of revisions</li>
                        <li><i class="fas fa-check"></i> 60 days support</li>
                        <li><i class="fas fa-check"></i> Custom functionality</li>
                        <li><i class="fas fa-check"></i> CMS integration</li>
                    </ul>
                    <a href="contact.html" class="btn btn-primary btn-block">Get Started</a>
                </div>
                
                <!-- Enterprise Package -->
                <div class="pricing-card animate-on-scroll">
                    <div class="pricing-header">
                        <div class="pricing-icon">
                            <i class="fas fa-crown"></i>
                        </div>
                        <h3 class="pricing-title">Enterprise</h3>
                        <p class="pricing-subtitle">Custom solutions</p>
                    </div>
                    <div class="pricing-price">
                        <span class="amount-text">Custom</span>
                        <span class="period">/ quote</span>
                    </div>
                    <ul class="pricing-features">
                        <li><i class="fas fa-check"></i> Unlimited pages</li>
                        <li><i class="fas fa-check"></i> Premium responsive design</li>
                        <li><i class="fas fa-check"></i> Advanced forms & integrations</li>
                        <li><i class="fas fa-check"></i> Premium SEO package</li>
                        <li><i class="fas fa-check"></i> Unlimited revisions</li>
                        <li><i class="fas fa-check"></i> 90 days support</li>
                        <li><i class="fas fa-check"></i> Complex functionality</li>
                        <li><i class="fas fa-check"></i> Full CMS & API integration</li>
                    </ul>
                    <a href="contact.html" class="btn btn-outline btn-block">Contact Me</a>
                </div>
            </div>
        </div>
    </section>

    <!-- FAQ Section -->
    <section class="faq-section">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title">Frequently Asked Questions</h2>
            </div>
            
            <div class="faq-list">
                <div class="faq-item animate-on-scroll">
                    <button class="faq-question">
                        <span>How long does a typical project take?</span>
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>
                            Project timelines vary based on complexity. A simple website 
                            typically takes 2-4 weeks, while more complex applications 
                            may take 6-12 weeks or longer.
                        </p>
                    </div>
                </div>
                
                <div class="faq-item animate-on-scroll">
                    <button class="faq-question">
                        <span>Do you work with clients remotely?</span>
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>
                            Yes! I work with clients worldwide through video calls, 
                            email, and project management tools.
                        </p>
                    </div>
                </div>
                
                <div class="faq-item animate-on-scroll">
                    <button class="faq-question">
                        <span>What if I need changes after launch?</span>
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="faq-answer">
                        <p>
                            All packages include post-launch support. Minor tweaks are 
                            typically included, while larger changes can be handled as 
                            separate projects.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container">
            <div class="cta-content">
                <h2 class="cta-title">Ready to Get Started?</h2>
                <p class="cta-text">
                    Let's discuss your project and find the perfect solution for your needs.
                </p>
                <a href="contact.html" class="btn btn-primary btn-large">
                    Contact Me Today <i class="fas fa-paper-plane"></i>
                </a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="main-footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3 class="footer-title">About</h3>
                    <p class="footer-text">
                        Passionate web developer dedicated to creating 
                        beautiful and functional digital experiences.
                    </p>
                </div>
                
                <div class="footer-section">
                    <h3 class="footer-title">Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="projects.html">Projects</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3 class="footer-title">Connect</h3>
                    <div class="footer-social">
                        <a href="#" aria-label="GitHub"><i class="fab fa-github"></i></a>
                        <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Email"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2025 Alex Johnson. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <button class="back-to-top" aria-label="Back to top">
        <i class="fas fa-arrow-up"></i>
    </button>

    <script src="js/main.js"></script>
</body>
</html>
EOF

echo "âœ… services.html created"

# ==========================================
# CREATE CONTACT PAGE
# ==========================================
echo "í³„ Creating contact.html..."

cat > contact.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Get in touch for web development projects and collaborations">
    <title>Contact | Web Developer Portfolio</title>
    
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/animations.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Navigation Header -->
    <header class="main-header">
        <nav class="navbar">
            <div class="container">
                <div class="nav-wrapper">
                    <a href="index.html" class="logo">
                        <span class="logo-text">&lt;Dev/&gt;</span>
                    </a>
                    
                    <button class="menu-toggle" aria-label="Toggle navigation menu" aria-expanded="false">
                        <span class="hamburger"></span>
                    </button>
                    
                    <ul class="nav-menu">
                        <li><a href="index.html" class="nav-link">Home</a></li>
                        <li><a href="about.html" class="nav-link">About</a></li>
                        <li><a href="projects.html" class="nav-link">Projects</a></li>
                        <li><a href="services.html" class="nav-link">Services</a></li>
                        <li><a href="contact.html" class="nav-link btn-contact active">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Page Header -->
    <section class="page-header">
        <div class="container">
            <h1 class="page-title animate-fadeInUp">Get In Touch</h1>
            <p class="page-subtitle animate-fadeInUp">
                Let's discuss your project and bring your ideas to life
            </p>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="container">
            <div class="contact-wrapper">
                <!-- Contact Info -->
                <div class="contact-info animate-fadeInLeft">
                    <h2 class="info-title">Let's Connect</h2>
                    <p class="info-text">
                        I'm always interested in hearing about new projects and 
                        opportunities. Whether you have a question or just want to 
                        say hi, feel free to reach out!
                    </p>
                    
                    <div class="contact-methods">
                        <div class="contact-method">
                            <div class="method-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="method-content">
                                <h3 class="method-title">Email</h3>
                                <a href="mailto:alex@example.com" class="method-link">
                                    alex@example.com
                                </a>
                            </div>
                        </div>
                        
                        <div class="contact-method">
                            <div class="method-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="method-content">
                                <h3 class="method-title">Phone</h3>
                                <a href="tel:+1234567890" class="method-link">
                                    +1 (234) 567-8900
                                </a>
                            </div>
                        </div>
                        
                        <div class="contact-method">
                            <div class="method-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="method-content">
                                <h3 class="method-title">Location</h3>
                                <p class="method-text">San Francisco, CA</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="social-connect">
                        <h3 class="social-title">Connect on Social Media</h3>
                        <div class="social-links-large">
                            <a href="#" class="social-btn" aria-label="GitHub">
                                <i class="fab fa-github"></i>
                                <span>GitHub</span>
                            </a>
                            <a href="#" class="social-btn" aria-label="LinkedIn">
                                <i class="fab fa-linkedin"></i>
                                <span>LinkedIn</span>
                            </a>
                            <a href="#" class="social-btn" aria-label="Twitter">
                                <i class="fab fa-twitter"></i>
                                <span>Twitter</span>
                            </a>
                            <a href="#" class="social-btn" aria-label="Dribbble">
                                <i class="fab fa-dribbble"></i>
                                <span>Dribbble</span>
                            </a>
                        </div>
                    </div>
                </div>
                
                <!-- Contact Form -->
                <div class="contact-form-wrapper animate-fadeInRight">
                    <form id="contactForm" class="contact-form" novalidate>
                        <div class="form-group">
                            <label for="name" class="form-label">
                                Your Name <span class="required">*</span>
                            </label>
                            <input 
                                type="text" 
                                id="name" 
                                name="name" 
                                class="form-input"
                                placeholder="John Doe"
                                required
                            >
                            <span class="error-message" id="nameError"></span>
                        </div>
                        
                        <div class="form-group">
                            <label for="email" class="form-label">
                                Email Address <span class="required">*</span>
                            </label>
                            <input 
                                type="email" 
                                id="email" 
                                name="email" 
                                class="form-input"
                                placeholder="john@example.com"
                                required
                            >
                            <span class="error-message" id="emailError"></span>
                        </div>
                        
                        <div class="form-group">
                            <label for="subject" class="form-label">
                                Subject <span class="required">*</span>
                            </label>
                            <select id="subject" name="subject" class="form-input" required>
                                <option value="">Select a subject</option>
                                <option value="project">New Project Inquiry</option>
                                <option value="quote">Request a Quote</option>
                                <option value="collaboration">Collaboration</option>
                                <option value="support">Support</option>
                                <option value="other">Other</option>
                            </select>
                            <span class="error-message" id="subjectError"></span>
                        </div>
                        
                        <div class="form-group">
                            <label for="message" class="form-label">
                                Your Message <span class="required">*</span>
                            </label>
                            <textarea 
                                id="message" 
                                name="message" 
                                class="form-textarea"
                                rows="6"
                                placeholder="Tell me about your project..."
                                required
                            ></textarea>
                            <span class="error-message" id="messageError"></span>
                        </div>
                        
                        <button type="submit" class="btn btn-primary btn-block btn-submit">
                            <span class="btn-text">Send Message</span>
                            <span class="btn-loading">
                                <i class="fas fa-spinner fa-spin"></i> Sending...
                            </span>
                        </button>
                        
                        <!-- Success/Error Messages -->
                        <div class="form-message success-message" id="successMessage">
                            <i class="fas fa-check-circle"></i>
                            <p>Thank you! Your message has been sent successfully.</p>
                        </div>
                        
                        <div class="form-message error-message-box" id="errorMessage">
                            <i class="fas fa-exclamation-circle"></i>
                            <p>Oops! Something went wrong. Please try again.</p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="main-footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3 class="footer-title">About</h3>
                    <p class="footer-text">
                        Passionate web developer dedicated to creating 
                        beautiful and functional digital experiences.
                    </p>
                </div>
                
                <div class="footer-section">
                    <h3 class="footer-title">Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="projects.html">Projects</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3 class="footer-title">Connect</h3>
                    <div class="footer-social">
                        <a href="#" aria-label="GitHub"><i class="fab fa-github"></i></a>
                        <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a href="#" aria-label="Email"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2025 Alex Johnson. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <button class="back-to-top" aria-label="Back to top">
        <i class="fas fa-arrow-up"></i>
    </button>

    <script src="js/main.js"></script>
    <script src="js/form-validation.js"></script>
</body>
</html>
EOF

echo "âœ… contact.html created"

# ==========================================
# APPEND TO CSS FILES (styles.css gets extended)
# ==========================================
echo "í¾¨ Extending CSS files..."

# Add page-specific styles to styles.css
cat >> css/styles.css << 'EOF'

/* ==========================================
   PROJECT PAGE STYLES
   ========================================== */
.projects-section {
    padding: var(--spacing-3xl) 0;
}

.project-filters {
    display: flex;
    justify-content: center;
    gap: var(--spacing-md);
    margin-bottom: var(--spacing-2xl);
    flex-wrap: wrap;
}

.filter-btn {
    padding: 0.75rem 1.5rem;
    background-color: var(--bg-secondary);
    color: var(--text-primary);
    border-radius: var(--radius-md);
    font-weight: 500;
    transition: var(--transition-base);
}

.filter-btn:hover,
.filter-btn.active {
    background-color: var(--primary-color);
    color: var(--color-white);
}

.projects-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
    gap: var(--spacing-xl);
}

.project-item {
    transition: var(--transition-base);
}

.project-item.hide {
    display: none;
}

.project-details {
    padding: var(--spacing-lg);
    background-color: var(--bg-secondary);
    border-radius: 0 0 var(--radius-lg) var(--radius-lg);
}

.project-name {
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: var(--spacing-sm);
}

.project-desc {
    color: var(--text-secondary);
    line-height: 1.75;
    margin-bottom: var(--spacing-md);
}

.project-tech {
    display: flex;
    flex-wrap: wrap;
    gap: var(--spacing-xs);
}

.tech-tag {
    padding: 0.375rem 0.875rem;
    background-color: var(--primary-light);
    color: var(--color-white);
    font-size: 0.875rem;
    border-radius: var(--radius-md);
}

.overlay-content {
    text-align: center;
}

.overlay-title {
    font-size: 1.5rem;
    margin-bottom: var(--spacing-md);
}

.overlay-links {
    display: flex;
    gap: var(--spacing-md);
    justify-content: center;
}

.overlay-btn {
    padding: 0.75rem 1.5rem;
    background-color: var(--color-white);
    color: var(--primary-color);
    border-radius: var(--radius-md);
    font-weight: 600;
}

.overlay-btn:hover {
    background-color: var(--bg-secondary);
}

/* ==========================================
   SERVICES PAGE STYLES
   ========================================== */
.services-overview {
    padding: var(--spacing-3xl) 0;
}

.services-intro {
    max-width: 800px;
    margin: 0 auto var(--spacing-2xl);
    text-align: center;
}

.section-text {
    font-size: 1.125rem;
    color: var(--text-secondary);
    line-height: 1.75;
}

.service-features {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: var(--spacing-lg);
}

.feature-item {
    display: flex;
    gap: var(--spacing-md);
    padding: var(--spacing-lg);
    background-color: var(--bg-secondary);
    border-radius: var(--radius-lg);
}

.feature-icon {
    font-size: 2rem;
    color: var(--primary-color);
    flex-shrink: 0;
}

.feature-title {
    font-size: 1.125rem;
    font-weight: 600;
    margin-bottom: 0.25rem;
}

.feature-desc {
    color: var(--text-secondary);
    font-size: 0.95rem;
}

/* Pricing */
.pricing-section {
    padding: var(--spacing-3xl) 0;
    background-color: var(--bg-secondary);
}

.pricing-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: var(--spacing-xl);
}

.pricing-card {
    background-color: var(--bg-primary);
    border-radius: var(--radius-xl);
    padding: var(--spacing-xl);
    box-shadow: var(--shadow-md);
    position: relative;
    transition: var(--transition-base);
}

.pricing-card:hover {
    transform: translateY(-10px);
    box-shadow: var(--shadow-xl);
}

.pricing-card.featured {
    border: 3px solid var(--primary-color);
}

.pricing-badge {
    position: absolute;
    top: -15px;
    left: 50%;
    transform: translateX(-50%);
    background-color: var(--primary-color);
    color: var(--color-white);
    padding: 0.375rem 1.25rem;
    border-radius: var(--radius-full);
    font-size: 0.875rem;
    font-weight: 600;
}

.pricing-header {
    text-align: center;
    margin-bottom: var(--spacing-lg);
}

.pricing-icon {
    width: 70px;
    height: 70px;
    margin: 0 auto var(--spacing-md);
    background: linear-gradient(135deg, var(--primary-color), var(--primary-dark));
    border-radius: var(--radius-xl);
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--color-white);
    font-size: 2rem;
}

.pricing-title {
    font-size: 1.75rem;
    font-weight: 700;
    margin-bottom: 0.5rem;
}

.pricing-subtitle {
    color: var(--text-secondary);
}

.pricing-price {
    text-align: center;
    margin-bottom: var(--spacing-lg);
}

.currency {
    font-size: 1.5rem;
    font-weight: 600;
    vertical-align: super;
}

.amount {
    font-size: 3rem;
    font-weight: 700;
    color: var(--primary-color);
}

.amount-text {
    font-size: 2.5rem;
    font-weight: 700;
    color: var(--primary-color);
}

.period {
    color: var(--text-secondary);
    font-size: 1rem;
}

.pricing-features {
    margin-bottom: var(--spacing-lg);
}

.pricing-features li {
    padding: 0.75rem 0;
    border-bottom: 1px solid var(--bg-secondary);
    display: flex;
    align-items: center;
    gap: var(--spacing-sm);
}

.pricing-features li:last-child {
    border-bottom: none;
}

.pricing-features li.disabled {
    color: var(--text-light);
}

.pricing-features i {
    font-size: 1.125rem;
}

.pricing-features .fa-check {
    color: var(--secondary-color);
}

.pricing-features .fa-times {
    color: var(--text-light);
}

/* FAQ Section */
.faq-section {
    padding: var(--spacing-3xl) 0;
}

.faq-list {
    max-width: 900px;
    margin: 0 auto;
}

.faq-item {
    margin-bottom: var(--spacing-md);
    border: 1px solid var(--bg-secondary);
    border-radius: var(--radius-lg);
    overflow: hidden;
}

.faq-question {
    width: 100%;
    padding: var(--spacing-lg);
    background-color: var(--bg-secondary);
    text-align: left;
    font-size: 1.125rem;
    font-weight: 600;
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
    transition: var(--transition-base);
}

.faq-question:hover {
    background-color: var(--primary-light);
    color: var(--color-white);
}

.faq-question i {
    transition: var(--transition-base);
}

.faq-item.active .faq-question i {
    transform: rotate(180deg);
}

.faq-answer {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease-out;
}

.faq-answer p {
    padding: var(--spacing-lg);
    color: var(--text-secondary);
    line-height: 1.75;
}

.faq-item.active .faq-answer {
    max-height: 500px;
}

/* ==========================================
   CONTACT PAGE STYLES
   ========================================== */
.contact-section {
    padding: var(--spacing-3xl) 0;
}

.contact-wrapper {
    display: grid;
    grid-template-columns: 1fr 1.5fr;
    gap: var(--spacing-3xl);
}

.contact-info {
    padding: var(--spacing-xl);
}

.info-title {
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: var(--spacing-md);
}

.info-text {
    color: var(--text-secondary);
    line-height: 1.75;
    margin-bottom: var(--spacing-xl);
}

.contact-methods {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-lg);
    margin-bottom: var(--spacing-xl);
}

.contact-method {
    display: flex;
    gap: var(--spacing-md);
    align-items: flex-start;
}

.method-icon {
    width: 50px;
    height: 50px;
    background-color: var(--primary-light);
    color: var(--color-white);
    border-radius: var(--radius-lg);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.25rem;
    flex-shrink: 0;
}

.method-title {
    font-size: 1rem;
    font-weight: 600;
    margin-bottom: 0.25rem;
}

.method-link {
    color: var(--primary-color);
    font-weight: 500;
}

.method-link:hover {
    text-decoration: underline;
}

.method-text {
    color: var(--text-secondary);
}

.social-connect {
    padding-top: var(--spacing-lg);
    border-top: 1px solid var(--bg-secondary);
}

.social-title {
    font-size: 1.125rem;
    font-weight: 600;
    margin-bottom: var(--spacing-md);
}

.social-links-large {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: var(--spacing-sm);
}

.social-btn {
    display: flex;
    align-items: center;
    gap: var(--spacing-xs);
    padding: 0.75rem 1rem;
    background-color: var(--bg-secondary);
    border-radius: var(--radius-md);
    font-weight: 500;
    transition: var(--transition-base);
}

.social-btn:hover {
    background-color: var(--primary-color);
    color: var(--color-white);
    transform: translateY(-2px);
}

/* Contact Form */
.contact-form-wrapper {
    background-color: var(--bg-secondary);
    padding: var(--spacing-xl);
    border-radius: var(--radius-xl);
    box-shadow: var(--shadow-lg);
}

.contact-form {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-lg);
}

.form-group {
    display: flex;
    flex-direction: column;
}

.form-label {
    font-weight: 600;
    margin-bottom: var(--spacing-xs);
}

.required {
    color: #ef4444;
}

.form-input,
.form-textarea {
    padding: 0.875rem 1rem;
    border: 2px solid var(--bg-secondary);
    border-radius: var(--radius-md);
    font-family: inherit;
    font-size: 1rem;
    transition: var(--transition-base);
    background-color: var(--bg-primary);
}

.form-input:focus,
.form-textarea:focus {
    outline: none;
    border-color: var(--primary-color);
}

.form-input.error,
.form-textarea.error {
    border-color: #ef4444;
}

.error-message {
    color: #ef4444;
    font-size: 0.875rem;
    margin-top: 0.25rem;
    display: none;
}

.error-message.show {
    display: block;
}

.form-message {
    padding: var(--spacing-md);
    border-radius: var(--radius-md);
    display: none;
    align-items: center;
    gap: var(--spacing-sm);
}

.form-message.show {
    display: flex;
}

.success-message {
    background-color: #d1fae5;
    color: #065f46;
}

.error-message-box {
    background-color: #fee2e2;
    color: #991b1b;
}

.btn-submit {
    position: relative;
}

.btn-loading {
    display: none;
}

.btn.loading .btn-text {
    display: none;
}

.btn.loading .btn-loading {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
}
EOF

echo "âœ… CSS files extended"

echo ""
echo "=========================================="
echo "âœ… ALL FILES CREATED SUCCESSFULLY!"
echo "=========================================="
echo ""
echo "í³ Project structure:"
echo "   â”œâ”€â”€ services.html âœ…"
echo "   â”œâ”€â”€ contact.html âœ…"
echo "   â””â”€â”€ css/styles.css (extended) âœ…"
echo ""
echo "í¾‰ Your portfolio website is complete!"
echo ""
echo "Next steps:"
echo "1. Open index.html in your browser to preview"
echo "2. Customize the content with your information"
echo "3. Deploy using the DEPLOYMENT-GUIDE.md"
echo ""
echo "í³š See README.md and START-HERE.md for more info"
echo ""

