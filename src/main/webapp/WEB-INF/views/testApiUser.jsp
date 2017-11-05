<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
    <title>TEST API</title>
    <script src="resources/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        // create user using text fields
        $('#apiCreateUser').on('click', function(){
            var data = {};
            data.username = $('#username').val();
            data.password = $('#password').val();
            
            console.log('creating user', data);
            $.ajax({
                type: "POST",
                url: "${ctx}/" + 'apiCreateUser',
                data: data,
            }).done(function(res){
                console.log('result:', res);
                getListUser();
            });
        });
        
        
        // create user using static test user
        $('#apiCreateUserStatic').on('click', function(){
            var data = {};
            data.username = 'TESTUSER';
            data.password = 'password';
            
            console.log('creating static user', data);
            $.ajax({
                type: "POST",
                url: "${ctx}/" + 'apiCreateUser',
                data: data,
            }).done(function(res){
                console.log('result:', res);
                getListUser();
            });
        });
        
        
        // list users
        $('#apiListUser').on('click', function(){
            getListUser();
        });
    });
    
    function getListUser(){
        console.log('list user');
        $.ajax({
            type: "GET",
            url: "${ctx}/" + 'apiListUser',
        }).done(function(res){
            console.log('result:', res);
            refreshList(res.data);
            addEvents();
        });
    }
    
    function refreshList(data){
        // clear all
        $('#list tbody').empty();
        
        for(var i=0; i<data.length; i++){
            var datum = data[i];
            // append all
            $('#list tbody').append(
                '<tr>' +
                    '<td>'+ datum.user_id +'</td>' +
                    '<td>'+ datum.username +'</td>' +
                    '<td>'+ datum.password +'</td>' +
                    '<td>' +
                        '<button id="apiDeleteUser" class="apiDeleteUser" data-id="'+ datum.user_id +'">Delete</button>' +
                    '</td>' +
                '</tr>'
            );
        }
    }
    
    function addEvents(){
        console.log('addEvents();');
        // delete user
        $('.apiDeleteUser').off().on('click', function(){
            var id = $(this).data('id');
            var _this = this;
            console.log('delete user', id);
            $.ajax({
                type: "DELETE",
                url: "${ctx}/" + 'apiDeleteUser/' + id,
            }).done(function(res){
                console.log('result:', res);
                // remove row
                $(_this).closest('tr').remove();
            });
        });
    }
    </script>
    
    <style type="text/css">
        button {
            padding: 5px;
            background-color: #00aa00;
        }
        input {
            padding: 5px;
        }
        div {
            margin: 20px;
            padding: 10px;
        }
        
        table {
            width: 100%;
        }
        table th {
            text-align: left;
            width: 25%;
            background-color: #0000aa;
            padding: 5px;
            color: white;
        }
        table tr td {
            border-top: 0.5px solid #0000aa;
        }
    </style>
</head>
<body>
    <section style="background-color: #cccccc;">
        <div>
            <hr>
            CREATE USER FROM FIELDS
            <hr>
            <input placeholder="Username" id="username" name="username" type="text" />
            <input placeholder="Password" id="password" name="password" type="password" />
            <button id="apiCreateUser">SAVE</button>
            <hr>
        </div>
    </section>
    
    
    
    <section style="background-color: #eeeeee;">
        <div>
            <hr>
            CREATE A STATIC USER (TESTUSER/password)
            <hr>
            <button id="apiCreateUserStatic">Create User</button>
            <hr>
        </div>
    </section>
    
    
    
    <section style="background-color: #cccccc;">
        <div>
            <hr>
            LIST OF USER
            <hr>
            <button id="apiListUser">Refresh List</button>
            <hr>
            
            <table id="list">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
            
            <hr>
        </div>
    </section>
</body>
</html>