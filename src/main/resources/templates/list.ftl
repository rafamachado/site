<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Specific Task </span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.task.id" />
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="titulo">Titulo</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.task.titulo" id="titulo" class="form-control input-sm" placeholder="Informe sua tarefa" required ng-minlength="5" ng-maxlength="30"/>
                            </div>
                        </div>
                    </div> 
     
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="descricao">Descricao</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.task.descricao" id="descricao" class="form-control input-sm" placeholder="Informe sua descricao" ng-minlength="5" ng-maxlength="30"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                           <div class="form-group col-md-12">
                           <label class="col-md-2 control-lable" for="data">Data</label>
                           <div class="col-md-7">
                               <input class="text" ng-model="ctrl.task.data" ui-mask="99/99/9999" model-view-value="true" ng-minlength="10">
                           </div>
                     </div>
 
                     <div class="row"> 
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="status">Status</label>
                    		<div ng-init="status=['INCOMPLETE','COMPLETED']"> </div>            
            					<select ng-model="ctrl.task.taskStatus" ng-options="s for s in status" class="ng-pristine ng-valid" required>
            						<option value="?" selected="selected"></option>
            						<option value="0">INCOMPLETE</option>
            						<option value="1">COMPLETED</option>
            					</select>
                        </div>
                    </div>
 
                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit"  value="{{!ctrl.task.id ? 'Inserir' : 'Gravar'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                            <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Limpar Campos</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>    
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Tasks </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>TITULO</th>
                        <th>DESCRICAO</th>
                        <th>DATA</th>
                        <th>STATUS</th>
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="l in ctrl.getAllTasks()">
                        <td>{{l.id}}</td>
                        <td>{{l.titulo}}</td>
                        <td>{{l.descricao}}</td>
                        <td>{{l.data}}</td>
                        <td>{{l.taskStatus}}</td>
                        <td><button type="button" ng-click="ctrl.editTask(l.id)" class="btn btn-success custom-width">Editar</button></td>
                        <td><button type="button" ng-click="ctrl.removeTask(l.id)" class="btn btn-danger custom-width">Remover</button></td>
                    </tr>
                    </tbody>
                </table>      
            </div>
        </div>
    </div>
</div>