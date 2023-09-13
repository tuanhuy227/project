<?php

    /**
     * gọi file autoload
     */
     $open = "dm";
    $active = "post";
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
    $sql = " SELECT * FROM tintuc WHERE 1";
    $tintuc = $db->fetchJone("tintuc",$sql,$page = $p,5,true);
    

    if(isset($tintuc['page']))
    {
        $sotrang =  $tintuc['page'];
        unset($tintuc['page']); 
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
                        <i> Bài viết  </i>
                    </li>
                </ul>
                <?php include __DIR__ ."/../../layouts/action.php"; ?>
            </div>

            <!-- hiện thông báo -->
            <?php include __DIR__ ."/../../layouts/notification.php"; ?>

            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus"></i> Bài viết
                    </div>
                </div>

                <div class="portlet-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width: 100px;">STT</th>
                                    <th class="text-center"> Tiêu đề </th>
                                    <th class="text-center"> Hình ảnh  </th>
                                    <th class="text-center"> Ký hiệu </th>
                                   
                                    <th class="text-center"> Thao Tác </th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($tintuc as $key => $item) :?>
                                <tr>
                                   <td class="text-center"><?= $key + 1 ?></td>
                                   <td class="text-center" style="width: 20%"><?php echo $item['tieude'] ?></td>
                                  
                                   <td class="text-center">
                                        <img src="<?php echo base_url() ?>public/uploads/post/<?php echo $item['hinhanh'] ?>" class="img" width="100" height="100" />
                                   </td>
                                   <td class="text-center"> <?php echo $item['slug'] ?></td>
                                   
                                  
                                   <td class="text-center">
                                        <a href="edit.php?id=<?php echo $item['id'] ?>" class="btn default btn-xs green"><i class="fa fa-edit"></i> Sửa</a>
                                        
                                        <a  href="delete.php?id=<?php echo $item['id'] ?>" class="btn default btn-xs red" onclick="return confirm('Bạn có muốn xóa không ? ')";> <i class="fa fa-times"></i> Xóa</a>
                                       
                                    </td>
                                </tr>
                                <?php endforeach ; ?>
                            </tbody>
                        </table>

                        <nav aria-label="Page navigation" class="clearfix">

                            <ul class="pagination" >
                                <li>
                                    <a href=""  aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>

                                <?php for(  $i = 1 ; $i <= $sotrang ; $i++ ) : ?>
                                    <?php
                                    if(isset($_GET['page']))
                                    {
                                        $p = $_GET['page'];
                                    }
                                    else
                                    {
                                        $p = 1;
                                    }
                                    ?>
                                    <li class="<?php echo ($i == $p) ? 'active' : ''  ?>">

                                        <a href="?page=<?php echo $i ;?>"><?php echo $i; ?></a>
                                    </li>
                                <?php endfor; ?>

                                <li>
                                    <a href="" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
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
