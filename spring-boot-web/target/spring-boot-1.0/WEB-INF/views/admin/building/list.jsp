
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="buildingListURL" value="/admin/building-list"/>
<html>
<head>
    <title>Danh sách tòa nhà</title>
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
                    <div class="widget-box">
                        <div class="widget-header" >
                            <h4 class="widget-title">Tìm kiếm</h4>

                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="ace-icon fa fa-chevron-up"></i>
                                </a>

                            </div>
                        </div>


                                <!-- PAGE CONTENT BEGINS -->
                                <div class="widget-body">
                                    <div class="widget-main">
                                       <form:form commandName="modelSearch" action="${buildingListURL}" id="listForm" method="GET">
                                        <div class="row">
                                              <%-- <div class="col-xs-12">
                                                   <div class="form-horizontal">
                                                       <div class="form-group">--%>
                                               <div class=" col-sm-6">
                                                   <div>
                                                       <label for="name">Tên tòa nhà</label>
                                                       <form:input path="name" cssClass="form-control"/>
                                                   </div>
                                               </div>
                                               <div class=" col-sm-6">
                                                   <div>
                                                       <label for="floorArea">Diện tích sàn</label>
                                                       <input type="number" id="floorArea" name="floorArea" value="${modelSearch.floorArea}" class="form-control" />
                                                   </div>
                                               </div>
                                           </div>
                                           <!-- PAGE CONTENT ENDS -->
                                           <div class="row">
                                               <div class=" col-sm-4" >
                                                   <label for="districtId">Quận hiện có</label>
                                                   <br />
                                                   <select class="form-district" id="districtId" data-placeholder=" -- Chọn quận -- " >
                                                       <option value="" disabled>--Chọn quận--</option>
                                                       <option value="Q1">Quận 1</option>
                                                       <option value="Q2">Quận 2</option>
                                                       <option value="Q4">Quận 4</option>
                                                   </select>

                                               </div>
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="ward"> Phường </label>
                                                       <form:input path="ward" cssClass="form-control"/>
                                                   </div>
                                               </div>
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="street"> Đường </label>
                                                       <form:input path="street" cssClass="form-control"/>
                                                   </div>
                                               </div>
                                           </div>
                                           <!-- PAGE CONTENT ENDS -->
                                           <div class="row">
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="numberOfBasement"> Số tầng hầm </label>
                                                       <input type="number" id="numberOfBasement" name="numberOfBasement" value="${modelSearch.numberOfBasement}" class="form-control" />
                                                   </div>
                                               </div>
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="direction"> Hướng </label>
                                                       <form:input path="direction" cssClass="form-control"/>
                                                   </div>
                                               </div>
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="level"> Hạng </label>
                                                       <input type="number" id="level" class="form-control" />
                                                   </div>
                                               </div>
                                           </div>
                                           <!-- PAGE CONTENT ENDS -->
                                           <div class="row">
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="managerName"> Tên quản lý </label>
                                                       <input type="text" id="managerName" class="form-control" />
                                                   </div>
                                               </div>
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="managerPhone"> Điện thoại quản lý </label>
                                                       <input type="text" id="managerPhone" class="form-control" />
                                                   </div>
                                               </div>
                                               <div class=" col-sm-4">
                                                   <div>
                                                       <label for="staffId"> Chọn nhân viên phụ trách </label>
                                                       <div>
                                                       <form:select path="staffId" cssClass="form-district">
                                                           <form:option value="-1" label="-- Chọn nhân viên --"/>
                                                           <form:options items="${staffmaps}"/>
                                                       </form:select>
                                                       </div>
                                                   </div>
                                               </div>
                                           </div>
                                           <!-- PAGE CONTENT ENDS -->
                                           <div class="row">
                                               <div class=" col-sm-3">
                                                   <div>
                                                       <label for="rentAreaFrom"> Diện tích từ </label>
                                                       <input type="number" id="rentAreaFrom" class="form-control" />
                                                   </div>
                                               </div>
                                               <div class=" col-sm-3">
                                                   <div>
                                                       <label for="rentAreaTo"> Diện tích đến </label>
                                                       <input type="number" id="rentAreaTo" class="form-control" />
                                                   </div>
                                               </div>
                                               <div class=" col-sm-3">
                                                   <div>
                                                       <label for="rentPriceFrom"> Giá thuê từ </label>
                                                       <input type="number" id="rentPriceFrom" class="form-control" />
                                                   </div>
                                               </div>
                                               <div class=" col-sm-3">
                                                   <div>
                                                       <label for="rentPriceTo"> Giá thuê đến </label>
                                                       <input type="number" id="rentPriceTo" class="form-control" />
                                                   </div>
                                               </div>
                                           </div>
                                           <!-- PAGE CONTENT ENDS -->
                                           <div class="row">
                                               <div class="col-sm-4">
                                                   <form>

                                                       <label>
                                                           <input name ="form-field-checkbox" type="checkbox" >
                                                           <span class="label-text">Tầng trệt</span>
                                                       </label>

                                                       <label>
                                                           <input name ="form-field-checkbox" type="checkbox" >
                                                           <span class="label-text">Nguyên Căn</span>
                                                       </label>

                                                       <label>
                                                           <input name ="form-field-checkbox" type="checkbox" <%--class="ace"--%> >
                                                           <span class="label-text">Nội thất</span>
                                                       </label>

                                                   </form>
                                               </div>
                                           </div>
                                           <div class="row">
                                               <div class="col-sm-4">
                                                  <button type="button" class="btn btn-sm btn-success" id="btnSearch">Tìm kiếm</button>
                                               </div>
                                           </div>
                                        </form:form>

                                    </div>
                </div>
                    </div>
                </div>
            </div><!-- /.row -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="pull-right">
                        <button class="btn btn-white btn-info btn-bold" data-toggle="tooltip" title=" Thêm tòa nhà ">
                        <i class="fa fa-plus-circle" aria-hidden="true"></i>
                        </button>
                        <button class="btn btn-white btn-info btn-bold" data-toggle="tooltip" title=" Xóa tòa nhà " id="btnDeleteBuilding">
                        <i class="fa fa-trash " aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div><!-- /.page-content -->


    </div>

    <div class="row">
        <div class="col-xs-12">
            <table id="buildingList" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th></th>
                    <th>Tên tòa nhà</th>
                    <th>Số tầng hầm</th>
                    <th>Địa chỉ</th>
                    <th>Tên quản lý</th>
                    <th>Số điện thoại</th>
                    <th>Diện tích sàn</th>
                    <th>Giá thuê</th>
                    <th>Phí dịch vụ</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${buildings}">
                    <tr>
                        <td><input type="checkbox" value="1" id="checkbox_5" checked/></td>
                        <td>${item.name}</td>
                        <td>${item.numberOfBasement}</td>
                        <td>111</td>
                        <td>111</td>
                        <td>111</td>
                        <td>111</td>
                        <td>111</td>
                        <td>111</td>
                        <td>
                            <button class="btn btn-xs btn-info" data-toggle="tooltip" title=" Giao tòa nhà " onclick="assignmentBuilding(1)" >
                                <i class="fa fa-bars" aria-hidden="true" ></i>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>

</div><!-- /.main-content -->
<!-- Assignment building model -->
<div id="assignmentBuildingModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Danh sách nhân viên</h4>
            </div>
            <div class="modal-body">
                <table class="table" id="staffList">
                    <thead>
                    <tr>
                        <th>Chọn nhân viên</th>
                        <th>Tên nhân viên</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox" value="2" id="checkbox_7" checked /></td>
                        <td>Nguyễn Văn B</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" value="3" id="checkbox_8" checked /></td>
                        <td>Nguyễn Văn C</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" value="4" id="checkbox_9" /></td>
                        <td>Nguyễn Văn D</td>
                    </tr>
                    </tbody>
                </table>
                <input type="hidden" id="buildingId" name="buildingId" value="	">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="btnAssignBuilding">Giao tòa nhà</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng lại</button>
            </div>
        </div>

    </div>
</div>

<script src="assets/js/jquery.2.1.1.min.js"></script>
<script>
    function assignmentBuilding(buildingId){
        openModalAssignmentBuilding();
        $('#buildingId').val(buildingId);
        console.log($('#buildingId').val());
    }
    function openModalAssignmentBuilding() {
        $('#assignmentBuildingModal').modal();
    }
    $(btnAssignBuilding).click(function (e) {
        e.preventDefault();
        var data = {};
        data['buildingId'] = $('#buildingId').val();
        //$('#staffList').find('tbody input[type=checkbox]')
        var staffs = $('#staffList').find('tbody input[type=checkbox]:checked').map(arrayOrObject, function () {
            return $(this).val();
        }).get();
        data['staffs'] = staffs;
        assignStaff(data);
    });

    function assignStaff(data) {
        $.ajax({
            type: "POST",
            url: "http://localhost8083/api/uset-assignment",
            data: JSON.stringify(data),
            dataType: "Json",
            contentType: "application/json",
            success: function (response) {
                console.log('success');
            },
            error: function (response) {
                console.log('fail');
                console.log(response);
            }
        });
    }
    $('#btnDeleteBuilding').click(function (e) {
        e.preventDefault();
        var data = {};
        var buildingIds= $('#buildingList').find('tbody input[type=checkbox]:checked').map(arrayOrObject, function () {
            return $(this).val();
        }).get();
        data['buildingIds'] = buildingIds;
        deleteBuilding(data);
    });

    function deleteBuilding(data) {
        $.ajax({
            type: "DELETE",
            url: "http://localhost8083/api/api-building",
            data: JSON.stringify(data),
            dataType: "Json",
            contentType: "application/json",
            success: function (response) {
                console.log('success');
            },
            error: function (response) {
                console.log('fail');
                console.log(response);
            }
        });
    }
    $('#btnSearch').click(function (e) {
        e.preventDefault();
        $('#listForm').submit();
    });
</script>
<!--[if !IE]> -->


</body>
</html>
