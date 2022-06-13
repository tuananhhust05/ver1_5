const express=require('express');//khai báo
const router= express.Router();  // khởi tạo đối tượng router 
// qua hai tầng folder nên bắt buộc phải có hai dẫu chấm 
const HomeController = require('../app/controllers/HomeController');// import thằng controller 
// thằng controller này chứa các chức năng (funtion)
// sắp xếp từ trên xuống theo độ phức tạp ; xét xem nếu đường link của thằng sau vào thằng trước có nhận nhầm được không
// quản lý truy cập 


// Chức năng giỏ hàng 
router.post('/register_product',HomeController.register_product);
router.get('/delete_order/:slug/:account',HomeController.delete_order); // delete order

// chuyển account vào controller 
router.post('/take_account',HomeController.take_account)
router.get('/detail/:slug',HomeController.detail)

router.get('/myorder',HomeController.myorder); // test nhúng code web3 vào html 


router.get('/marketplacever1',HomeController.marketplacever1);


router.get('/',HomeController.home);
module.exports=router;