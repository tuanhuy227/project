<?php

    /**
     * gọi file autoload
     */
    $active = "donhang";
    include __DIR__ ."/../../autoload/autoload.php";

    $open =  "dh";
    $active = "donhang";
    
    if (isset($_GET['id']) && $_GET['id']  != '')
    {
        $id = intval($_GET['id']);
    }
    else
    {
        $_SESSION['error'] = ' Không tồn tại ID ';
        redirectAdmin("tranction");
    }
    /**
     *  lấy danh sách sản phẩm
     */
    $sql = " SELECT chitietdonhang.*, sanpham.tensanpham as tensp FROM chitietdonhang 
         LEFT JOIN sanpham ON sanpham.id = chitietdonhang.sanpham_id
        WHERE 1 AND  donhang_id = $id ";
   
    $chitiet = $db->fetchsql($sql);

?>  

<?php 
    /**
     * goi file header
     */
    include __DIR__ ."/../../layouts/header.php";
 ?>
     <div class="page-content-wrapper">
        <div class="page-content">
            <div class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <i class="fa fa-home"></i>
                        <a href="<?php echo base_admin() ?>">Home</a>
                        <i class="fa fa-angle-right"></i>
                    </li>
                   
                    <li>
                        <i> Đơn hàng  </i>
                    </li>
                </ul>
                <?php include __DIR__ ."/../../layouts/action.php"; ?>
            </div>

            <!-- hiện thông báo -->
            <?php include __DIR__ ."/../../layouts/notification.php"; ?>

            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus"></i> Chi tiết đơn hàng 
                    </div>
                </div>

                <div class="portlet-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center"> Mã hoá đơn</th>
                                    <th class="text-center"> Sản phẩm </th>
                                    <th class="text-center"> Hình ảnh </th>
                                    <th class="text-center"> Số lượng </th>
                                    <th class="text-center"> Giá </th>
                                    <th class="text-center"> Ngày đặt hàng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($chitiet as $item) :?>
                                <tr>
                                   <td class="text-center">MHD<?= $item['id'] ?></td>
                                   <td class="text-center">
                                       <?php echo $item['tensp'] ?> <br>
                                       Size: <?= $item['size'] ?>
                                   </td>
                                   <td class="text-center">
                                       <img src="<?php echo base_url() ?>public/uploads/product/<?php echo $item['hinhanh'] ?>" class="img" width="100" height="100" />
                                   </td>
                                   <td class="text-center"><?php echo $item['soluong'] ?></td>
                                   <td class="text-center"><?php echo formatprice($item['gia']) ?> đ</td>
                                   <td class="text-center"><?php echo $item['created_at'] ?> </td>
                                </tr>
                                <?php endforeach ; ?>
                            </tbody>
                        </table>
                        <a href="index.php" class="btn btn-danger pull-right">Trở về</a>
                    </div>
                </div>
            </div>
           
        </div>
    </div>

 <?php 
    /**
     * goi file footer
     */
    include __DIR__ ."/../../layouts/footer.php";
 ?>
