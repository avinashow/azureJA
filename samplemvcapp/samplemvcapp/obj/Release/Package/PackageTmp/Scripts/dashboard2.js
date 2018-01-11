$(function () {

  'use strict';

  /* ChartJS
   * -------
   * Here we will create a few charts using ChartJS
   */

  // -----------------------
  // - MONTHLY SALES CHART -
  // -----------------------

  // Get context with jQuery - using jQuery's .get() method.
  var salesChartCanvas = $('#salesChart').get(0).getContext('2d');
  // This will get the first returned node in the jQuery collection.
  var salesChart       = new Chart(salesChartCanvas);

  var salesChartData = {
    labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    datasets: [
      {
        label               : 'Electronics',
        fillColor           : 'rgb(210, 214, 222)',
        strokeColor         : 'rgb(210, 214, 222)',
        pointColor          : 'rgb(210, 214, 222)',
        pointStrokeColor    : '#c1c7d1',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgb(220,220,220)',
        data                : [65, 59, 80, 81, 56, 55, 40]
      },
      {
        label               : 'Digital Goods',
        fillColor           : 'rgba(60,141,188,0.9)',
        strokeColor         : 'rgba(60,141,188,0.8)',
        pointColor          : '#3b8bba',
        pointStrokeColor    : 'rgba(60,141,188,1)',
        pointHighlightFill  : '#fff',
        pointHighlightStroke: 'rgba(60,141,188,1)',
        data                : [28, 48, 40, 19, 86, 27, 90]
      }
    ]
  };

  var salesChartOptions = {
    // Boolean - If we should show the scale at all
    showScale               : true,
    // Boolean - Whether grid lines are shown across the chart
    scaleShowGridLines      : false,
    // String - Colour of the grid lines
    scaleGridLineColor      : 'rgba(0,0,0,.05)',
    // Number - Width of the grid lines
    scaleGridLineWidth      : 1,
    // Boolean - Whether to show horizontal lines (except X axis)
    scaleShowHorizontalLines: true,
    // Boolean - Whether to show vertical lines (except Y axis)
    scaleShowVerticalLines  : true,
    // Boolean - Whether the line is curved between points
    bezierCurve             : true,
    // Number - Tension of the bezier curve between points
    bezierCurveTension      : 0.3,
    // Boolean - Whether to show a dot for each point
    pointDot                : false,
    // Number - Radius of each point dot in pixels
    pointDotRadius          : 4,
    // Number - Pixel width of point dot stroke
    pointDotStrokeWidth     : 1,
    // Number - amount extra to add to the radius to cater for hit detection outside the drawn point
    pointHitDetectionRadius : 20,
    // Boolean - Whether to show a stroke for datasets
    datasetStroke           : true,
    // Number - Pixel width of dataset stroke
    datasetStrokeWidth      : 2,
    // Boolean - Whether to fill the dataset with a color
    datasetFill             : true,
    // String - A legend template
    legendTemplate          : '<ul class=\'<%=name.toLowerCase()%>-legend\'><% for (var i=0; i<datasets.length; i++){%><li><span style=\'background-color:<%=datasets[i].lineColor%>\'></span><%=datasets[i].label%></li><%}%></ul>',
    // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
    maintainAspectRatio     : true,
    // Boolean - whether to make the chart responsive to window resizing
    responsive              : true
  };

  // Create the line chart
  salesChart.Line(salesChartData, salesChartOptions);

  // ---------------------------
  // - END MONTHLY SALES CHART -
  // ---------------------------

  // -------------
  // - PIE CHART -
  // -------------
  // Get context with jQuery - using jQuery's .get() method.
  //var pieChartCanvas = $('#pieChart').get(0).getContext('2d');
  //var pieChart       = new Chart(pieChartCanvas);
  //var PieData        = [
  //  {
  //    value    : 700,
  //    color    : '#f56954',
  //    highlight: '#f56954',
  //    label    : 'Cancelled'
  //  },
  //  {
  //    value    : 500,
  //    color    : '#00a65a',
  //    highlight: '#00a65a',
  //    label    : 'Completed'
  //  },
  //  {
  //    value    : 400,
  //    color    : '#f39c12',
  //    highlight: '#f39c12',
  //    label    : 'Backlogged'
  //  },
  //  {
  //    value    : 100,
  //    color    : '#d2d6de',
  //    highlight: '#d2d6de',
  //    label    : 'Deferred'
  //  }
  //];
  //var pieOptions     = {
  //  // Boolean - Whether we should show a stroke on each segment
  //  segmentShowStroke    : true,
  //  // String - The colour of each segment stroke
  //  segmentStrokeColor   : '#fff',
  //  // Number - The width of each segment stroke
  //  segmentStrokeWidth   : 1,
  //  // Number - The percentage of the chart that we cut out of the middle
  //  percentageInnerCutout: 50, // This is 0 for Pie charts
  //  // Number - Amount of animation steps
  //  animationSteps       : 100,
  //  // String - Animation easing effect
  //  animationEasing      : 'easeOutBounce',
  //  // Boolean - Whether we animate the rotation of the Doughnut
  //  animateRotate        : true,
  //  // Boolean - Whether we animate scaling the Doughnut from the centre
  //  animateScale         : false,
  //  // Boolean - whether to make the chart responsive to window resizing
  //  responsive           : true,
  //  // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
  //  maintainAspectRatio  : false,
  //  // String - A legend template
  //  legendTemplate       : '<ul class=\'<%=name.toLowerCase()%>-legend\'><% for (var i=0; i<segments.length; i++){%><li><span style=\'background-color:<%=segments[i].fillColor%>\'></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>',
  //  // String - A tooltip template
  //  tooltipTemplate      : '<%=value %> <%=label%> users'
  //};
  // Create pie or douhnut chart
  // You can switch between pie and douhnut using the method below.
  //pieChart.Doughnut(PieData, pieOptions);
  // -----------------
  // - END PIE CHART -
  // -----------------
// KNOB values
//START
    // rendering the pending cases
  var pieChartValues = [{
      y: 486,
      exploded: true,
      indexLabel: "Received",
      legendText: "Received",
      color: "#3c8dbc"
  }, {
      y: 351,
      indexLabel: "Approved",
      legendText: "Approved",
      exploded: true,
      color: "black"
  }];
  renderPieChart(pieChartValues, "Order Sheets", "orderSheets", "OrderSheetsContainer");

    //rendering the total cases
    var caseChartValues = [{
        y: 641,
        exploded: true,
        indexLabel: "Assigned",
        legendText: "Assigned",
        color: "#3c8dbc"
    }, {
        y: 213,
        indexLabel: "Completed",
        legendText: "Completed",
        exploded: true,
        color: "black"
    }];
    renderPieChart(caseChartValues, "Total Cases","totalCasesValue", "totalCases");

    //rendering the case pending cases
    var pendingChartValues = [{
        y: 42,
        exploded: true,
        indexLabel: "This month",
        legendText: "This month",
        color: "#3c8dbc"
    }, {
        y: 1520,
        indexLabel: "Other months",
        legendText: "Other months",
        exploded: true,
        color: "black"
    }];
    renderPieChart(pendingChartValues, "Pending Cases", "totaPendingCasesValue", "pendingCases");

    //rendering the disposal ratio
    var disposalChartValues = [{
        y: 184,
        exploded: true,
        indexLabel: "Time Taken",
        legendText: "Time Taken",
        color: "#3c8dbc"
    }, {
        y: 260,
        indexLabel: "Target SLA",
        legendText: "Target SLA",
        exploded: true,
        color: "black"
    }];
    renderPieChart(disposalChartValues, "Disposal Ratio", "", "caseDisposal");

  function renderPieChart(values, text, id, divid) {
      var chart = new CanvasJS.Chart(divid, {
          backgroundColor: "white",
          colorSet: "colorSet2",
          title: {
              text: text,
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
              type: "doughnut",
              showInLegend: true,
              toolTipContent: "<strong>#percent%</strong>",
              dataPoints: values
          }]
      });
      chart.render();
      if (id.length > 0) {
          $("#" + id).text(getTotal(chart));
      }
  }

    //rendering the Pending Cases
    var pendingCasesChartValues = [{
    	y: 700,
    	exploded: true,
    	indexLabel: "Cancelled",
    	legendText: "Cancelled",
    	color: "#3c8dbc"
    }, {
    	y: 500,
    	indexLabel: "Completed",
    	legendText: "Completed",
    	exploded: true,
    	color: "black"
    }, {
        y: 400,
        indexLabel: "Backlogged",
        legendText: "Backlogged",
        exploded: true,
        color: "orange"
    }, {
        y: 100,
        indexLabel: "Deferred",
        legendText: "Deferred",
        exploded: true,
        color: "gray"
    }];

    renderDonutChart(pendingCasesChartValues);

    function renderDonutChart(values) {
        console.log("rendering pending cases");
        var chart = new CanvasJS.Chart("pendingCasesChart", {
            backgroundColor: "white",
            colorSet: "colorSet2",
            title: {
                text: "Pending Cases Status",
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
                type: "doughnut",
                showInLegend: true,
                toolTipContent: "<strong>#percent%</strong>",
                dataPoints: values
            }]
        });
        chart.render();
    }



    //get Total values
  function getTotal(chart) {
      var dps = chart.options.data[0].dataPoints;
      var sum = 0;

      for (var i = 0; i < dps.length; i++) {

          sum += dps[i].y;

      }
      return sum;
  }
//END 
  /* jVector Maps
   * ------------
   * Create a world map with markers
   */
  $('#world-map-markers').vectorMap({
      map: 'us_aea',
    normalizeFunction: 'polynomial',
    hoverOpacity     : 0.7,
    hoverColor       : false,
    backgroundColor  : 'transparent',
    regionStyle      : {
      initial      : {
        fill            : 'rgba(210, 214, 222, 1)',
        'fill-opacity'  : 1,
        stroke          : 'none',
        'stroke-width'  : 0,
        'stroke-opacity': 1
      },
      hover        : {
        'fill-opacity': 0.7,
        cursor        : 'pointer'
      },
      selected     : {
        fill: 'yellow'
      },
      selectedHover: {}
    },
    markerStyle      : {
      initial: {
          fill: '#0073b7',
        stroke: '#111'
      }
    },
    markers: [{
        latLng: [41.50, -87.37],
        name: 'Chicago'
    }, {
        latLng: [32.46, -96.46],
        name: 'Dallas'
    },
    { latLng: [42.40, -73.45], name: 'Albany' },
    { latLng: [35.05, -106.39], name: 'Albuqerque' },
    { latLng: [35.11, -101.50], name: 'Amarillo' },
    { latLng: [30.16, -97.44], name: 'Austin' },
    { latLng: [44.47, -117.50], name: 'Baker' },
    { latLng: [39.18, -76.38], name: 'Baltimore' },
    { latLng: [44.48, -68.47], name: 'Bangor' },
    { latLng: [42.21, -71.05], name: 'Boston' },
    { latLng: [42.55, -78.50], name: 'Buffalo' },
    { latLng: [51.01, -114.01], name: 'Calgary' },
    { latLng: [35.14, -80.50], name: 'Charlotte' },
    { latLng: [41.28, -81.37], name: 'Cleveland' },
    { latLng: [32.46, -96.46], name: 'Dallas' },
    { latLng: [39.45, -105.0], name: 'Denver' },
    { latLng: [42.20, -93.37], name: 'Detroit' },
    { latLng: [53.34, -113.28], name: 'Edmonton' },
    { latLng: [31.46, -106.29], name: 'El Paso' },
    { latLng: [46.52, -96.48], name: 'Fargo' },
    { latLng: [32.43, -97.19], name: 'Fort Worth' },
    { latLng: [39.05, -108.33], name: 'Grand Junction' },
    { latLng: [39.06, -94.35], name: 'Kansas ' },
    { latLng: [39.46, -86.10], name: 'Indianapolis' }
    ]
  });

  /* SPARKLINE CHARTS
   * ----------------
   * Create a inline charts with spark line
   */

  // -----------------
  // - SPARKLINE BAR -
  // -----------------
  $('.sparkbar').each(function () {
    var $this = $(this);
    $this.sparkline('html', {
      type    : 'bar',
      height  : $this.data('height') ? $this.data('height') : '30',
      barColor: $this.data('color')
    });
  });

  // -----------------
  // - SPARKLINE PIE -
  // -----------------
  $('.sparkpie').each(function () {
    var $this = $(this);
    $this.sparkline('html', {
      type       : 'pie',
      height     : $this.data('height') ? $this.data('height') : '90',
      sliceColors: $this.data('color')
    });
  });

  // ------------------
  // - SPARKLINE LINE -
  // ------------------
  $('.sparkline').each(function () {
    var $this = $(this);
    $this.sparkline('html', {
      type     : 'line',
      height   : $this.data('height') ? $this.data('height') : '90',
      width    : '100%',
      lineColor: $this.data('linecolor'),
      fillColor: $this.data('fillcolor'),
      spotColor: $this.data('spotcolor')
    });
  });
});
