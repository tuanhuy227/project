<?php

    /**
     * gọi file autoload
     */
     $open = "dm";
    $active = "category";
    include __DIR__ ."/../../autoload/autoload.php";

    /**
     *  lấy id url
     */
   
    
    if (isset($_GET['id']) && $_GET['id']  != '')
    {
        $id = intval($_GET['id']);
    }
    else
    {
        $_SESSION['error'] = ' Không tồn tại ID ';
        redirectAdmin("category");
    }

    $categoryEdit = $db->fetchID("danhmuc", $id) ;

    if ( ! $categoryEdit)
    {
        $_SESSION['error'] = ' Không tồn tại ID ';
        redirectAdmin("category");
    }

     /**
     *  xử lý 
     */
    
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $error = [];

        $tendanhmuc = postInput("tendanhmuc");
        if ($tendanhmuc == '')
        {
            $error['tendanhmuc'] = " Tên loại sản phẩm không được để trống";
        }
        
        $danhmuccha_id = postInput("danhmuccha_id");

        if( empty($error))
        {
            $data = [
                'tendanhmuc'    => $tendanhmuc,
                'slug'          => to_slug($tendanhmuc),
                'updated_at'    => $updatetime
            ];

            /**
             * upload file 
             */
            if ( isset($_FILES['hinhanh']))
            {
               $file_name = $_FILES['hinhanh']['name'];
               $file_tmp  = $_FILES['hinhanh']['tmp_name'];
               $file_type = $_FILES['hinhanh']['type'];
               $file_erro = $_FILES['hinhanh']['error'];

               if ($file_erro == 0)
               {
                    $part = ROOT ."category/";
                    $data['hinhanh'] = $file_name;
                    move_uploaded_file($file_tmp,$part.$file_name);
               }
            }

            

            // tiến hành update
            $id_edit = $db->update("danhmuc" , $data ,array("id" => $id));   
            if($id_edit > 0 )
            {
                $_SESSION['success'] = ' Cập nhật thành công ';
                redirectAdmin("category");
            }
            else
            {
                $_SESSION['error'] = ' Cập nhật thất bại  ';
                redirectAdmin('category');
            }
        }
       
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
                        <a href="index.php" ><i> Loại sản phẩm </i></a>
                    </li>
                </ul>


                <?php include __DIR__ ."/../../layouts/action.php"; ?>


            </div>

            <!-- hiện thông báo -->
            <?php include __DIR__ ."/../../layouts/notification.php"; ?>


            <div class="portlet box red">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus"></i> Cập nhật loại sản phẩm  
                    </div>
                </div>
                <div class="portlet-body form">
                    <form role="form" method="POST" class="form-horizontal ng-pristine ng-valid" action="" enctype="multipart/form-data">
                       
                        <div class="form-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label col-md-3"> Tên loại sản phẩm </label>
                                        <div class="col-md-9">
                                            <input type="text" name="tendanhmuc" value="<?php echo isset($categoryEdit) ? $categoryEdit['tendanhmuc'] : '' ?>" class="form-control has-maxlength" placeholder="Tên danh mục" maxlength="200">
                                        </div>
                                    </div>

                                                                    
                                   
                                </div>
                               
                                <div class="col-sm-6 border-cus">
                                    <div class="form-group">
                                        <label class="custom-file-upload col-sm-11">
                                            <i class="fa fa-file-image-o"></i> Hình ảnh
                                            <input type="file" accept="image/*" name="hinhanh" onchange="loadFileThunbar(event)" class="col-md-6">
                                        </label>
                                        
                                    </div>
                                    <img  class="outputthunbar" class="col-md-10" width="97%" height="150" />                                
                                </div>                               
                            </div>
                        </div>
                        <div class="form-actions right">
                            <button type="submit" class="btn green">Lưu</button>
                        </div>
                    </form>
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