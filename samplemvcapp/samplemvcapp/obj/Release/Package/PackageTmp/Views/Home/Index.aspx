<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">
      <h1>
        Analytics Dashboard
      </h1>
    </section>

    <section class="content">
        <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="text-align:center;">
             <input type="text" class="knob test" data-readonly="true" value="53%" data-width="100%" data-height="100%" data-fgColor="green">
            <div class="knob-label"><strong>Case Assigned to Disposal Ratio</strong></div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="text-align:center;">
            <input type="text" class="knob test" data-readonly="true" value="30%" data-width="100%" data-height="100%" data-fgColor="red">
            <div class="knob-label"><strong>Pending Order Sheets</strong></div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="text-align:center;">
            <input type="text" class="knob test" data-readonly="true" value="30%" data-width="100%" data-height="100%" data-fgColor="yellow">
            <div class="knob-label"><strong>Pending Cases</strong></div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>

        <!-- Row#2 -->
      <div class="row">
            <div class="col-md-8">
            <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Time to Resolve the Cases vs Target</h3>

                <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <div class="btn-group">
                    <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-wrench"></i></button>
                    <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                    </ul>
                </div>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                <div class="col-md-12">
                    <p class="text-center">
                    <strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
                    </p>

                    <div class="chart">
                    <!-- Sales Chart Canvas -->
                    <canvas id="salesChart" style="height: 180px;"></canvas>
                    </div>
                    <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.box-footer -->
            </div>
            <!-- /.box -->
        </div>

            <div class="col-md-4">
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Pending Cases</h3>

                        <div class="box-tools pull-right">
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="chart-responsive">
                                    <canvas id="pieChart" height="150"></canvas>
                                </div>
                                <!-- ./chart-responsive -->
                            </div>
                            <!-- /.col -->
                            <div class="col-md-4">
                                <ul class="chart-legend clearfix">
                                <li><i class="fa fa-circle-o text-red"></i> Cancelled</li>
                                <li><i class="fa fa-circle-o text-green"></i> Completed</li>
                                <li><i class="fa fa-circle-o text-yellow"></i> Backlogged</li>
                                <li><i class="fa fa-circle-o text-gray"></i> Deferred</li>
                                </ul>
                            </div>
                        <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                </div>
                <!-- /.col -->
            </div>
    </div>
        <!-- Row#2 -->
       <!--- Row#3 --->
     <div class="row">
           <div class="col-md-8">
          <!-- MAP & BOX PANE -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Visitors Report</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="row">
                <div class="col-md-9 col-sm-8">
                  <div class="pad">
                    <!-- Map will be created here -->
                    <div id="world-map-markers" style="height: 325px;"></div>
                  </div>
                </div>
                <!-- /.col -->
                <div class="col-md-3 col-sm-4">
                  <div class="pad box-pane-right bg-green" style="min-height: 280px">
                    <div class="description-block margin-bottom">
                      <div class="sparkbar pad" data-color="#fff">90,70,90,70,75,80,70</div>
                      <h5 class="description-header">8390</h5>
                      <span class="description-text">Visits</span>
                    </div>
                    <!-- /.description-block -->
                    <div class="description-block margin-bottom">
                      <div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>
                      <h5 class="description-header">30%</h5>
                      <span class="description-text">Referrals</span>
                    </div>
                    <!-- /.description-block -->
                    <div class="description-block">
                      <div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>
                      <h5 class="description-header">70%</h5>
                      <span class="description-text">Organic</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
           <div class="col-md-4">
               <!-- TO DO List -->
                  <div class="box box-primary">
                    <div class="box-header">
                      <i class="ion ion-clipboard"></i>

                      <h3 class="box-title">To Do List</h3>

                      <div class="box-tools pull-right">
                        <ul class="pagination pagination-sm inline">
                          <li><a href="#">&laquo;</a></li>
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">&raquo;</a></li>
                        </ul>
                      </div>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
                      <ul class="todo-list">
                        <li>
                          <!-- drag handle -->
                          <span class="handle">
                                <i class="fa fa-ellipsis-v"></i>
                                <i class="fa fa-ellipsis-v"></i>
                              </span>
                          <!-- checkbox -->
                          <input type="checkbox" value="">
                          <!-- todo text -->
                          <span class="text">Design a nice theme</span>
                          <!-- Emphasis label -->
                          <small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
                          <!-- General tools such as edit or delete-->
                          <div class="tools">
                            <i class="fa fa-edit"></i>
                            <i class="fa fa-trash-o"></i>
                          </div>
                        </li>
                        <li>
                              <span class="handle">
                                <i class="fa fa-ellipsis-v"></i>
                                <i class="fa fa-ellipsis-v"></i>
                              </span>
                          <input type="checkbox" value="">
                          <span class="text">Make the theme responsive</span>
                          <small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
                          <div class="tools">
                            <i class="fa fa-edit"></i>
                            <i class="fa fa-trash-o"></i>
                          </div>
                        </li>
                        <li>
                              <span class="handle">
                                <i class="fa fa-ellipsis-v"></i>
                                <i class="fa fa-ellipsis-v"></i>
                              </span>
                          <input type="checkbox" value="">
                          <span class="text">Let theme shine like a star</span>
                          <small class="label label-warning"><i class="fa fa-clock-o"></i> 1 day</small>
                          <div class="tools">
                            <i class="fa fa-edit"></i>
                            <i class="fa fa-trash-o"></i>
                          </div>
                        </li>
                        <li>
                              <span class="handle">
                                <i class="fa fa-ellipsis-v"></i>
                                <i class="fa fa-ellipsis-v"></i>
                              </span>
                          <input type="checkbox" value="">
                          <span class="text">Let theme shine like a star</span>
                          <small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
                          <div class="tools">
                            <i class="fa fa-edit"></i>
                            <i class="fa fa-trash-o"></i>
                          </div>
                        </li>
                        <li>
                              <span class="handle">
                                <i class="fa fa-ellipsis-v"></i>
                                <i class="fa fa-ellipsis-v"></i>
                              </span>
                          <input type="checkbox" value="">
                          <span class="text">Check your messages and notifications</span>
                          <small class="label label-primary"><i class="fa fa-clock-o"></i> 1 week</small>
                          <div class="tools">
                            <i class="fa fa-edit"></i>
                            <i class="fa fa-trash-o"></i>
                          </div>
                        </li>
                        <li>
                              <span class="handle">
                                <i class="fa fa-ellipsis-v"></i>
                                <i class="fa fa-ellipsis-v"></i>
                              </span>
                          <input type="checkbox" value="">
                          <span class="text">Let theme shine like a star</span>
                          <small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
                          <div class="tools">
                            <i class="fa fa-edit"></i>
                            <i class="fa fa-trash-o"></i>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer clearfix no-border">
                      <button type="button" class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>
                    </div>
                  </div>
           </div>
       </div>  
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script>
        $(document).ready(function () {
            $('.knob').knob();
        })
        
    </script>
</asp:Content>

