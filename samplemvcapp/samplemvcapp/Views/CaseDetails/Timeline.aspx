<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Timeline
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="justify-content:center;display:flex;">
        <div class="col-md-10" style="background-color:white;border-radius:20px;">
            <div class="row">
                <div class="col-md-5">
                    <div id="pieChart" style="height: 360px; width: 100%;"></div>
                </div>
                <div class="col-md-5">
                    <div id="columnChart" style="height: 360px; width: 100%;"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row" style="justify-content:center;display:flex;">
        <div class="col-md-10" style="background-color:white;border-radius:20px;">
            <div class="container">
                <div class="page-header">
                    <h1 id="timeline">Timeline</h1>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-badge">
                            2017
                        </div>
                    </li>
                </ul>
            
                <ul class="timeline">
                    <li>
                        <div class="timeline-badge"><i class="glyphicon glyphicon-calendar"></i></div>
                        <div class="timeline-panel">
                        <div class="timeline-heading">
                            <h4 class="timeline-title">Status: Scheduled</h4>
                            <p><small class="text-muted">21 December 2017</small></p>
                        </div>
                        <div class="timeline-body">
                        
                        </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-badge warning"><i class="glyphicon glyphicon-calendar"></i></div>
                        <div class="timeline-panel">
                        <div class="timeline-heading">
                            <h4 class="timeline-title">Anderson vs Martin</h4>
                            <p><small class="text-muted">18 December 2017</small></p>
                        </div>
                        <div class="timeline-body">
                            <h3><b>Summary:</b></h3>
                            <p>Both parties appeared before court, Police presented enough evidence against Martin to be Pronounced Guilty </p>
                            <h3><b>Result:</b></h3>
                            <p><b>Session Time: </b> 31mins<br /></p>
                            <p><b>Short Order: </b>Notice to Authority Medical Test reports Of Minor</p>
                        </div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-badge"><i class="glyphicon glyphicon-user"></i></div>
                        <div class="timeline-panel">
                        <div class="timeline-heading">
                            <h4 class="timeline-title">Lewis Smith</h4>
                            <p><small class="text-muted">Petitioner's Attorney</small></p>
                        </div>
                        <div class="timeline-body">
                            <table>
                                <tr>
                                    <td>SSN: </td><td>998226988</td>
                                </tr>
                                <tr>
                                    <td>Started Practice: </td><td>1996</td>
                                </tr>
                                <tr>
                                    <td>Current Cases: </td><td>14</td>
                                </tr>
                            </table>
                        </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-badge warning"><i class="glyphicon glyphicon-calendar"></i></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="timeline-title">Martin Hall</h4>
                                <p><small class="text-muted"><b>Accused</b></small></p>
                            </div>
                            <div class="timeline-body">
                                <h3><b>Charges:</b></h3>
                                <p>
                                    <ol>
                                        <li>Sexual Exploitation of Minor</li>
                                        <li>Attempted Kidnapping</li>
                                    </ol>

                                </p>
                                <h3><b>Possible Evidence Found:</b></h3>
                                <p>
                                    cell phone video, cell phone picture, text message.
                                </p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    
    <script>
        var pieChartValues = [{
            y: 39.16,
            exploded: true,
            indexLabel: "Criminal Proceedings",
            color: "#1f77b4"
        }, {
            y: 21.8,
            indexLabel: "Average Hearing for category",
            exploded: true,
            color: "#ff7f0e"
        }, {
            y: 21.45,
            indexLabel: "SLA disposal",
            exploded: true,
            color: " #ffbb78"
        }, {
            y: 5.56,
            indexLabel: "Current Conducting Hearings",
            exploded: true,
            color: "#d62728"
        }];
        renderPieChart(pieChartValues);

        function renderPieChart(values) {

            var chart = new CanvasJS.Chart("pieChart", {
                backgroundColor: "white",
                colorSet: "colorSet2",

                title: {
                    text: "Case Category",
                    fontFamily: "Verdana",
                    fontSize: 25,
                    fontWeight: "normal",
                },
                animationEnabled: true,
                data: [{
                    indexLabelFontSize: 15,
                    indexLabelFontFamily: "Monospace",
                    indexLabelFontColor: "darkgrey",
                    indexLabelLineColor: "darkgrey",
                    indexLabelPlacement: "outside",
                    type: "pie",
                    showInLegend: false,
                    toolTipContent: "<strong>#percent%</strong>",
                    dataPoints: values
                }]
            });
            chart.render();
        }

        var columnChartValues = [{
            y: 686.04,
            label: "one",
            color: "#1f77b4"
        }, {
            y: 381.84,
            label: "two",
            color: "#ff7f0e"
        }, {
            y: 375.76,
            label: "three",
            color: " #ffbb78"
        }, {
            y: 97.48,
            label: "four",
            color: "#d62728"
        }, {
            y: 94.2,
            label: "five",
            color: "#98df8a"
        }, {
            y: 65.28,
            label: "Hi",
            color: "#bcbd22"
        }, {
            y: 51.2,
            label: "Hello",
            color: "#f7b6d2"
        }];
        renderColumnChart(columnChartValues);

        function renderColumnChart(values) {

            var chart = new CanvasJS.Chart("columnChart", {
                backgroundColor: "white",
                colorSet: "colorSet3",
                title: {
                    text: "Current Trend",
                    fontFamily: "Verdana",
                    fontSize: 25,
                    fontWeight: "normal",
                },
                animationEnabled: true,
                legend: {
                    verticalAlign: "bottom",
                    horizontalAlign: "center"
                },
                theme: "theme2",
                data: [

                  {
                      indexLabelFontSize: 15,
                      indexLabelFontFamily: "Monospace",
                      indexLabelFontColor: "darkgrey",
                      indexLabelLineColor: "darkgrey",
                      indexLabelPlacement: "outside",
                      type: "column",
                      showInLegend: false,
                      legendMarkerColor: "grey",
                      dataPoints: values
                  }
                ]
            });

            chart.render();
        }
    </script>
</asp:Content>