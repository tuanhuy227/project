<?php

    /**
     * gọi file autoload
     */
    
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


    $product = "SELECT * FROM sanpham WHERE danhmuc_id = $id";
    $productDelete = $db->fetchsql($product);
    
    if (count($productDelete) > 0)
    {
        $_SESSION['error'] = '  Không thể loại sản phẩm này vì nó chứa dữ liệu kèm theo !!! ';
        redirectAdmin("category");
    }

    


    $num = $db->delete('danhmuc', $id);

    if ($num > 0)
    {
        $_SESSION['success'] = ' Xóa thành công ';
        redirectAdmin("category");
    }
    else
    {
        $_SESSION['error'] = " Xóa thất bại";
        redirectAdmin("category");
    }

 ?>