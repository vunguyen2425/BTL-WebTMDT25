<?php
// File PHP giữ nguyên mã HTML, CSS, và JS
?>
<div class="slideshow-container">
    <div class="slide active">
        <img src="/slideshow/image/x1.jpg">
    </div>
    <div class="slide">
        <img src="/slideshow/image/x2.jpg" alt="Ảnh 2">
    </div>
    <div class="slide">
        <img src="/slideshow/image/x3.jpg" alt="Ảnh 3">
    </div>
    <div class="slide">
        <img src="/slideshow/image/x4.jpg" alt="Ảnh 4">
    </div>
    <!-- Thêm các ảnh khác nếu cần -->
</div>

<style>
    .slideshow-container {
        position: relative;
        width: 1695px;
        height: 500px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    
    .slide {
        position: absolute;
        width: 100%;
        height: 100%;
        opacity: 0;
        transition: opacity 1s ease-in-out;
    }
    
    .slide.active {
        opacity: 1;
    }
    
    .slide img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const slides = document.querySelectorAll('.slide');
        let currentSlide = 0;
        const slideCount = slides.length;
        
        function showSlide(index) {
            slides.forEach(slide => {
                slide.classList.remove('active');
            });
            slides[index].classList.add('active');
        }
        
        function nextSlide() {
            currentSlide = (currentSlide + 1) % slideCount;
            showSlide(currentSlide);
        }
        
        setInterval(nextSlide, 7000);
        showSlide(currentSlide);
    });
</script>