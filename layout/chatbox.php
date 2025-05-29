<div class="chatbox">
  <!-- Trợ lý phía trên -->
  <div class="button" onclick="toggleAssistant()">
    <div>🤖<br>Trợ lý</div>
  </div>

  <!-- Chatbox trợ lý ảo -->
  <div class="assistant-container" id="assistant">
    <div class="assistant-header">
      <i class="fas fa-robot"></i>
      <span>Trợ lý ảo hỗ trợ</span>
    </div>
    <div class="assistant-body">
      <div class="assistant-question" onclick="showAnswer(1)">
        Làm cách nào để đặt hàng?
      </div>
      <div class="assistant-answer" id="answer1">
        Bạn có thể đặt hàng trực tiếp trên website bằng cách chọn sản phẩm, thêm vào giỏ hàng và làm theo hướng dẫn thanh toán. Hoặc gọi hotline 0815.208.208 để được hỗ trợ đặt hàng.
      </div>

      <div class="assistant-question" onclick="showAnswer(2)">
        Chính sách giao hàng thế nào?
      </div>
      <div class="assistant-answer" id="answer2">
        Chúng tôi giao hàng toàn quốc trong 2-5 ngày làm việc. Miễn phí ship cho đơn hàng từ 500.000đ trở lên trong nội thành Hà Nội và TP.HCM.
      </div>

      <div class="assistant-question" onclick="showAnswer(3)">
        Thời gian làm việc của cửa hàng?
      </div>
      <div class="assistant-answer" id="answer3">
        Thời gian làm việc: 8h00 - 20h00 từ Thứ 2 đến Chủ Nhật. Hỗ trợ online 24/7 qua hotline và chat.
      </div>

      <div class="assistant-question" onclick="showAnswer(4)">
        Có thể đổi trả sản phẩm không?
      </div>
      <div class="assistant-answer" id="answer4">
        Chúng tôi chấp nhận đổi trả trong vòng 7 ngày nếu sản phẩm còn nguyên tem mác, chưa qua sử dụng và có hóa đơn mua hàng.
      </div>
      <div class="assistant-question" onclick="showAnswer(5)">
        Có những phương thức thanh toán nào?
      </div>
      <div class="assistant-answer" id="answer5">
        Chúng tôi chấp nhận nhiều phương thức: Thanh toán khi nhận hàng (COD), chuyển khoản ngân hàng, ví điện tử (Momo, ZaloPay), và thẻ quốc tế (Visa/Mastercard).
      </div>
      <div class="assistant-question" onclick="showAnswer(7)">
        Làm sao để kiểm tra thông tin sản phẩm chi tiết?
      </div>
      <div class="assistant-answer" id="answer7">
        Bạn có thể xem thông số kỹ thuật, hình ảnh và đánh giá trong trang chi tiết sản phẩm. Liên hệ hotline nếu cần tư vấn thêm từ nhân viên.
      </div>
      <div class="assistant-question" onclick="showAnswer(8)">
        Chính sách bảo hành như thế nào?
      </div>
      <div class="assistant-answer" id="answer8">
        Sản phẩm được bảo hành từ 6-24 tháng tùy loại. Mang sản phẩm kèm hóa đơn đến cửa hàng gần nhất hoặc liên hệ tổng đài 0815.208.208 để được hướng dẫn.
      </div>
      <div class="assistant-question" onclick="showAnswer(10)">
        Quên mật khẩu đăng nhập phải làm sao?
      </div>
      <div class="assistant-answer" id="answer10">
        Nhấn "Quên mật khẩu" tại trang đăng nhập, nhập email đăng ký để nhận link đặt lại mật khẩu mới (kiểm tra cả hộp thư spam nếu không thấy).
      </div>
    </div>
  </div>

  <!-- Nút liên hệ phía dưới -->
  <div class="button" onclick="toggleContacts()">
    <div>💬<br>Liên Hệ</div>
    <span class="badge">1</span>
  </div>

  <!-- Khung xổ ra khi click -->
  <div class="contact-options" id="contacts">
    <a href="https://www.facebook.com/CellphoneSVietnam/?locale=vi_VN" target="_blank" class="contact-item">
      <i class="fab fa-facebook-messenger"></i> Messenger
    </a>
    <a href="https://zalo.me/2709729516030357642" target="_blank" class="contact-item">
      <img src="https://upload.wikimedia.org/wikipedia/commons/9/91/Icon_of_Zalo.svg" alt="Zalo"> Zalo Chat
    </a>
    <a href="tel:0815208208" class="contact-item">
      <i class="fas fa-phone-alt"></i> Call: 0815.208.208
    </a>
  </div>
</div>

<style>
  :root {
    --primary-color: rgb(170, 170, 170);
    --secondary-color: rgb(24, 23, 23);
    --accent-color: rgb(212, 209, 209);
    --dark-color: #2b2d42;
    --light-color: #f8f9fa;
    --success-color: #4cc9f0;
    --warning-color: #f72585;
    --shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    --transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
  }

  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  .chatbox {
    position: fixed;
    right: 30px;
    bottom: 30px;
    width: 70px;
    z-index: 999;
    display: flex;
    flex-direction: column;
    gap: 12px;
  }

  .button {
    background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
    color: white;
    padding: 12px 0;
    text-align: center;
    border-radius: 16px;
    cursor: pointer;
    box-shadow: var(--shadow);
    transition: var(--transition);
    position: relative;
    overflow: hidden;
    border: none;
    font-weight: 500;
  }

  .button:hover {
    transform: translateY(-3px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
  }

  /* Phần CSS mới cho trợ lý ảo */
  .assistant-container {
    position: absolute;
    right: 80px;
    bottom: 120px;
    width: 300px;
    background: white;
    border-radius: 16px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    transform-origin: bottom right;
    transform: scale(0);
    opacity: 0;
    transition: var(--transition);
    border: 1px solid rgba(0, 0, 0, 0.05);
    overflow: hidden;
    display: none;
  }

  .assistant-container.show {
    display: block;
    transform: scale(1);
    opacity: 1;
  }

  .assistant-header {
    background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
    color: white;
    padding: 12px 16px;
    font-weight: bold;
    display: flex;
    align-items: center;
  }

  .assistant-header i {
    margin-right: 10px;
    font-size: 18px;
  }

  .assistant-body {
    padding: 16px;
    max-height: 300px;
    overflow-y: auto;
  }

  .assistant-question {
    margin-bottom: 12px;
    cursor: pointer;
    padding: 10px;
    border-radius: 8px;
    transition: var(--transition);
    border: 1px solid #eee;
  }

  .assistant-question:hover {
    background-color: rgba(67, 97, 238, 0.1);
    border-color: var(--accent-color);
  }

  .assistant-answer {
    display: none;
    padding: 12px;
    margin-top: 8px;
    background-color: #f8f9fa;
    border-radius: 8px;
    border-left: 3px solid var(--accent-color);
    animation: fadeIn 0.3s ease;
  }

  /* Phần CSS cũ cho contact */
  .contact-options {
    display: none;
    position: absolute;
    right: 80px;
    bottom: 0;
    background: white;
    border-radius: 16px;
    padding: 20px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
    min-width: 250px;
    transform-origin: bottom right;
    transform: scale(0);
    opacity: 0;
    transition: var(--transition);
    border: 1px solid rgba(0, 0, 0, 0.05);
  }

  .contact-options.show {
    display: block;
    transform: scale(1);
    opacity: 1;
  }

  /* Các phần CSS khác giữ nguyên */
  .button:active {
    transform: translateY(1px);
  }

  .button::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.2), transparent);
    opacity: 0;
    transition: var(--transition);
  }

  .button:hover::after {
    opacity: 1;
  }

  .button span.badge {
    position: absolute;
    top: -5px;
    right: -5px;
    background-color: var(--warning-color);
    color: white;
    font-size: 11px;
    padding: 3px 6px;
    border-radius: 50%;
    border: 2px solid white;
    font-weight: bold;
    animation: pulse 1.5s infinite;
  }

  @keyframes pulse {
    0% {
      transform: scale(1);
    }

    50% {
      transform: scale(1.1);
    }

    100% {
      transform: scale(1);
    }
  }

  .contact-item {
    display: flex;
    align-items: center;
    margin-bottom: 16px;
    color: var(--dark-color);
    text-decoration: none;
    font-size: 15px;
    padding: 8px 12px;
    border-radius: 10px;
    transition: var(--transition);
  }

  .contact-item i {
    font-size: 20px;
    width: 30px;
    color: var(--primary-color);
  }

  .contact-item img {
    width: 20px;
    height: 20px;
    margin-right: 10px;
  }

  .contact-item:hover {
    background-color: #7A7A7A;
    transform: translateX(5px);
    text-decoration: none;
  }

  .contact-item:last-child {
    margin-bottom: 0;
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translateY(10px);
    }

    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  /* Responsive */
  @media (max-width: 768px) {
    .chatbox {
      right: 15px;
      bottom: 15px;
      width: 60px;
    }

    .contact-options,
    .assistant-container {
      right: 70px;
      min-width: 220px;
      max-width: 80vw;
    }

    .assistant-container {
      bottom: 100px;
    }
  }
</style>
<script>
  // Database mẫu - có thể thay thế bằng dữ liệu từ server thực tế
  const assistantData = {
    questions: [{
        id: 1,
        question: "Làm cách nào để đặt hàng?",
        answer: "Bạn có thể đặt hàng trực tiếp trên website bằng cách chọn sản phẩm, thêm vào giỏ hàng và làm theo hướng dẫn thanh toán. Hoặc gọi hotline 0815.208.208 để được hỗ trợ đặt hàng."
      },
      {
        id: 2,
        question: "Chính sách giao hàng thế nào?",
        answer: "Chúng tôi giao hàng toàn quốc trong 2-5 ngày làm việc. Miễn phí ship cho đơn hàng từ 500.000đ trở lên trong nội thành Hà Nội và TP.HCM."
      },
      {
        id: 3,
        question: "Thời gian làm việc của cửa hàng?",
        answer: "Thời gian làm việc: 8h00 - 20h00 từ Thứ 2 đến Chủ Nhật. Hỗ trợ online 24/7 qua hotline và chat."
      },
      {
        id: 4,
        question: "Có thể đổi trả sản phẩm không?",
        answer: "Chúng tôi chấp nhận đổi trả trong vòng 7 ngày nếu sản phẩm còn nguyên tem mác, chưa qua sử dụng và có hóa đơn mua hàng."
      }
    ]
  };

  function toggleAssistant() {
    const assistant = document.getElementById("assistant");
    assistant.classList.toggle('show');

    // Đóng contact nếu đang mở
    const contact = document.getElementById("contacts");
    if (contact.classList.contains('show')) {
      contact.classList.remove('show');
    }
  }

  function showAnswer(id) {
    // Ẩn tất cả câu trả lời trước khi hiển thị câu mới
    document.querySelectorAll('.assistant-answer').forEach(answer => {
      answer.style.display = 'none';
    });

    // Hiển thị câu trả lời được chọn
    const answer = document.getElementById(`answer${id}`);
    answer.style.display = 'block';

    // Cuộn đến câu trả lời
    answer.scrollIntoView({
      behavior: 'smooth',
      block: 'nearest'
    });
  }

  function toggleContacts() {
    const box = document.getElementById("contacts");
    const badge = document.querySelector(".badge");

    box.classList.toggle('show');
    if (box.classList.contains('show')) {
      badge.style.display = "none";
    }

    // Đóng assistant nếu đang mở
    const assistant = document.getElementById("assistant");
    if (assistant.classList.contains('show')) {
      assistant.classList.remove('show');
    }
  }

  // Đóng khi click bên ngoài
  document.addEventListener('click', function(event) {
    const box = document.getElementById("contacts");
    const assistant = document.getElementById("assistant");
    const buttons = document.querySelectorAll('.button');
    let isClickInside = false;

    buttons.forEach(button => {
      if (button.contains(event.target)) {
        isClickInside = true;
      }
    });

    if (!box.contains(event.target) && !isClickInside && box.classList.contains('show')) {
      box.classList.remove('show');
    }

    if (!assistant.contains(event.target) && !isClickInside && assistant.classList.contains('show')) {
      assistant.classList.remove('show');
    }
  });
</script>