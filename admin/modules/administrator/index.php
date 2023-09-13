<?php

    /**
     * gọi file autoload
     */
    $open = "setting";
    $active = "admin";
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
    $sql = " SELECT * FROM admin WHERE 1";
    $admin = $db->fetchJone("admin",$sql,$page = $p,5,false);
    

    if(isset($admin['page']))
    {
        $sotrang =  $admin['page'];
        unset($admin['page']); 
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
                        <i> Ban quản trị  </i>
                    </li>
                </ul>
                <?php include __DIR__ ."/../../layouts/action.php"; ?>
            </div>

            <!-- hiện thông báo -->
            <?php include __DIR__ ."/../../layouts/notification.php"; ?>

            <div class="portlet box green">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus"></i> Danh sách quản trị viên  
                    </div>
                </div>

                <div class="portlet-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width: 100px;">STT</th>
                                    <th class="text-center"> Tên </th>
                                    <th class="text-center"> Email </th>
                                    <th class="text-center"> Số điện thoại  </th>
                                    <th class="text-center"> Quyền hạn </th>
                                    <th class="text-center" style="width: 20%"> Thao Tác </th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($admin as $key => $item) :?>
                                <tr>
                                   <td class="text-center"><?= $key + 1 ?></td>
                                   <td class="text-center"><?php echo $item['name'] ?></td>
                                   <td class="text-center"><?php echo $item['email'] ?></td>
                                   <td class="text-center"> <?php echo $item['phone'] ?></td>
                                   <td class="text-center">
                                       <select name="level" class="form-control" disabled>
                                            <option value="2" <?php echo ($item['level'] ==  2 ? "selected = 'selected'" : '')  ?>> <span> Quản Trị Viên</span></option>
                                        </select>
                                   </td>
                                   <td class="text-center">
                                       
                                        <a href="edit.php?id=<?php echo $item['id'] ?>" class="btn default btn-xs green"><i class="fa fa-edit"></i> Sửa</a>
                                        <a  href="delete.php?id=<?php echo $item['id'] ?>" class="btn default btn-xs red" onclick="return confirm('Bạn có muốn xóa không ? ')";> <i class="fa fa-times"></i> Xóa</a>
                                       
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
