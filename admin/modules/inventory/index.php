<?php

    /**
     * gọi file autoload
     */
    $open =  "ht";
    $active = "inventory";
    include __DIR__ ."/../../autoload/autoload.php";

    /**
     * lấy số trang nếu có
     */
    
    if(isset($_GET['page']))
    {
        $p = $_GET['page'];
    }
    else
    {
        $p = 1;
    }

    /**
     *  lấy danh sách sản phẩm
     */
    $sql = " SELECT sanpham.*, danhmuc.tendanhmuc as danhmuc FROM sanpham 
        LEFT JOIN danhmuc ON danhmuc.id = sanpham.danhmuc_id
        WHERE 1 AND soluong <= 5";
    $productList = $db->fetchJone("sanpham",$sql,$page = $p,5,false);
    

    if(isset($productList['page']))
    {
        $sotrang =  $productList['page'];
        unset($productList['page']); 
    }
    

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
                        <i> Mặt hàng sắp hết  </i>
                    </li>
                </ul>
               
            </div>

            <!-- hiện thông báo -->
            <?php include __DIR__ ."/../../layouts/notification.php"; ?>

            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus"></i> Mặt hàng sắp hết  
                    </div>
                </div>

                <div class="portlet-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width: 100px;">STT</th>
                                    <th class="text-center"> Tên </th>
                                    <th class="text-center"> Danh mục </th>
                                    <th class="text-center"> Hình ảnh  </th>
                                    <th class="text-center"> Ký hiệu </th>
                                    <th class="text-center"> Thông tin </th>
                            
                                  
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($productList as $key => $item) :?>
                                <tr>
                                   <td class="text-center"><?= $key + 1 ?></td>
                                   <td class="text-center"><?php echo $item['tensanpham'] ?></td>
                                   <td class="text-center"><?php echo $item['danhmuc'] ?></td>
                                   <td class="text-center">
                                        <img src="<?php echo base_url() ?>public/uploads/product/<?php echo $item['hinhanh'] ?>" class="img" width="100" height="100" />
                                   </td>
                                   <td class="text-center"> <?php echo $item['slug'] ?></td>
                                   <td>
                                       <ul>
                                           <li>Số lượng   : <?php echo $item['soluong'] ?></li>
                                           <li>Tình trạng :  <?php echo checkprice($item['soluong']) ?></li>
                                           <li> Giá  : <?php echo formatprice($item['gia'])  ?> đ</li>
                                           
                                       </ul>
                                   </td>
                                  
                                   
                                </tr>
                                <?php endforeach ; ?>
                            </tbody>
                        </table>
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