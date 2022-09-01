<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="buildingAPI" value="/api/building"/>
<html>
<head>
    <title> Chỉnh sửa tòa nhà </title>
</head>
<body>
<div class="main-content">

    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->


        </div>

        <div class="page-content">


            <div class="row">
                <div class="col-xs-12">
                    <form class="form-horizontal" role="form" id="formEdit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="name"> Tên tòa nhà </label>

                            <div class="col-sm-9">
                                <input type="text" id="name"  class="form-control" name="name" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="staffname"> Người quản lý sản phẩm </label>

                            <div class="col-sm-9">
                                <input type="text" id="staffname"  class="form-control" name="staffname" value=""/>
                            </div>
                        </div>
                   <%--     <div class="form-group">
                            <label class="col-sm-3  control-label  no-padding-right form-district" for="numberOfBasement2"> Quận </label>
                            <div class="col-sm-9">
                                <select class=" form-district" id="districtId" data-placeholder=" -- Chọn quận -- " >
                                    <option value="" disabled>--Chọn quận--</option>
                                    <option value="Q1">Quận 1</option>
                                    <option value="Q2">Quận 2</option>
                                    <option value="Q4">Quận 4</option>
                                </select>
                            </div>

                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="ward"> Phường </label>

                            <div class="col-sm-9">
                                <input type="text" id="ward"  class="form-control" name="ward" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="street"> Đường </label>

                            <div class="col-sm-9">
                                <input type="text" id="street"  class="form-control" name="street" value=""/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="structing"> Kết cấu </label>
                            <div class="col-sm-9">
                                <input type="text" id="structing"  class="form-control" name="structing"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement"> Số tầng hầm </label>

                            <div class="col-sm-9">
                                <input type="number" id="numberOfBasement"  class="form-control" name="numberOfBasement"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="floorArea"> Diện tích sàn </label>

                            <div class="col-sm-9">
                                <input type="text" id="floorArea"  class="form-control" name="floorArea"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="direction"> Hướng </label>

                            <div class="col-sm-9">
                                <input type="text" id="direction"  class="form-control" name="direction"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="level"> Hạng </label>

                            <div class="col-sm-9">
                                <input type="text" id="level"  class="form-control" name="level"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="rentarea"> Diện tích thuê </label>

                            <div class="col-sm-9">
                                <input type="text" id="rentarea"  class="form-control" name="rentarea"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="directionArea"> Mô tả diện tích </label>

                            <div class="col-sm-9">
                                <input type="text" id="directionArea"  class="form-control" name="directionArea"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="rentprice"> Mô tả giá </label>

                            <div class="col-sm-9">
                                <input type="text" id="rentprice"  class="form-control" name="rentprice"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="servicefee"> Phí dịch vụ </label>

                            <div class="col-sm-9">
                                <input type="text" id="servicefee"  class="form-control" name="servicefee"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="carfee"> Phí ô tô </label>

                            <div class="col-sm-9">
                                <input type="text" id="carfee"  class="form-control" name="carfee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="motorfee"> Phí mô tô </label>

                            <div class="col-sm-9">
                                <input type="text" id="motorfee"  class="form-control" name="motorfee"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement16"> Phí ngoài giờ </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement16"  class="form-control" name="numberOfBasement16"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement17"> Tiền điện </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement17"  class="form-control" name="numberOfBasement17"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement2"> Đặt cọc </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement2"  class="form-control" name="numberOfBasement2"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement3"> Thanh toán </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement3"  class="form-control" name="numberOfBasement3"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement4"> Thời hạn thuê </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement4"  class="form-control" name="numberOfBasement4"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement5"> Thời gian trang trí </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement5"  class="form-control" name="numberOfBasement5"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="numberOfBasement6"> Tên quản lý </label>

                            <div class="col-sm-9">
                                <input type="text" id="numberOfBasement6"  class="form-control" name="numberOfBasement6"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="managerPhone"> Số điện thoại quản lý </label>

                            <div class="col-sm-9">
                                <input type="text" id="managerPhone"  class="form-control" name="managerPhone"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="brokeFee"> Phí môi giới </label>

                            <div class="col-sm-9">
                                <input type="text" id="brokeFee"  class="form-control" name="brokeFee"/>
                            </div>
                        </div>
                  <%--      <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" > Loại tòa nhà </label>

                            <div class="col-sm-9">
                                <label class="checkbox-inline"><input type="checkbox" value="TANG_TRET" id="buildingTypes1" name="buildingTypes">Tầng trệt</label>
                                <label class="checkbox-inline"><input type="checkbox" value="NGUYEN_CAN" id="buildingTypes2" name="buildingTypes">Nguyên căn</label>
                                <label class="checkbox-inline"><input type="checkbox" value="NOI_THAT" id="buildingTypes3" name="buildingTypes">Nội thất</label>
                            </div>
                        </div>--%>

                        <div class="form-group" style="text-align: center">
                            <%--<label class="col-sm-3 control-label no-padding-right" ></label>--%>
                            <div class="col-sm-9">
                                <button type="button" class="btn btn-primary" id="btnAddbuilding">Thêm tòa nhà</button>
                                <button type="button" class="btn btn-warning" id="">Hủy</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/jquery.2.1.1.min.js"></script>
    <script>
        $('#btnAddbuilding').click(function(e) {
            e.preventDefault();
            //call api add building
            var data = {};
            var buildingTypes = [];
            var formData = $('#formEdit').serializeArray();
            $.each(formData, function (index, v) {
                /* if(v.name == 'buildingTypes') {
                     buildingTypes.push(v.value);
                 } else {*/
                data["" + v.name + ""] = v.value;
                //}

            });

            /*  data['buildingTypes'] = buildingTypes;*/
            $.ajax({
                type: 'POST',
                url: '${buildingAPI}',
                data: JSON.stringify(data),
                dataType: "json",
                contentType: "application/json",
                success: function (response) {
                    console.log('success');
                },
                error: function (response) {
                    console.log('failed');
                    console.log(response);
                }
            });
        });

    </script>

    <!--[if !IE]> -->
</body>
</html>
