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


  var chartColors = {
      red: 'rgba(0, 0, 0, 0.4)',
      orange: 'rgb(255, 159, 64)',
      yellow: 'rgb(255, 205, 86)',
      green: 'rgb(75, 192, 192)',
      blue: 'rgba(54, 162, 235,0.4)',
      purple: 'rgb(153, 102, 255)',
      grey: 'rgb(231,233,237)'
  };
  var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
  Chart.defaults.global.legend.position = 'bottom';
  var config = {
      type: 'line',
      data: {
          labels: ["January", "February", "March", "April", "May", "June", "July"],
          datasets: [{
              label: "Actual",
              backgroundColor: chartColors.red,
              borderColor: chartColors.red,
              data: [65, 59, 80, 81, 56, 55, 40],
              fill: true,
          }, {
              label: "Target",
              fill: true,
              backgroundColor: chartColors.blue,
              borderColor: chartColors.blue,
              data: [28, 48, 40, 19, 86, 27, 90],
          }]
      },
      options: {
          responsive: true,
          title: {
              display: true,
              text: 'Time to Resolve the Cases vs Target',
              fontSize: 25
          },
          tooltips: {
              mode: 'label',
          },
          hover: {
              mode: 'nearest',
              intersect: true
          },
          scales: {
              xAxes: [{
                  display: true,
                  scaleLabel: {
                      display: true,
                      labelString: 'Month'
                  }
              }],
              yAxes: [{
                  display: true,
                  scaleLabel: {
                      display: true,
                      labelString: 'Value'
                  }
              }]
          }
      }
  };
  var salesChart = new Chart(salesChartCanvas, config);


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
   

    //rendering the doughtnut chart using chart js library//
      var orderSheetData = {
          labels: [
            "Approved",
            "Received"
          ],
          datasets: [
            {
                data: [486, 351],
                backgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ],
                hoverBackgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ]
            }]
      };
      var ord = getTotal(orderSheetData);
      displayChart(orderSheetData, "orderSheetChart", "Order Sheet", ord);

    //rendering the total cases
      var caseChartValues = {
          labels: [
            "Assigned",
            "Completed"
          ],
          datasets: [
            {
                data: [641, 213],
                backgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ],
                hoverBackgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ]
            }]
      };
      var tot = getTotal(caseChartValues);
      displayChart(caseChartValues, "totalCasesChart", "Total Cases", tot);

    //rendering the case pending cases
      var pendingChartValues = {
          labels: [
            "This month",
            "Other months"
          ],
          datasets: [
            {
                data: [42, 1520],
                backgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ],
                hoverBackgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ]
            }]
      };
      var pend = getTotal(pendingChartValues);
      displayChart(pendingChartValues, "pendingChart", "Pending Cases", pend);

    //rendering the disposal ratio
      var disposalChartValues = {
          labels: [
            "Time Taken",
            "Target SLA"
          ],
          datasets: [
            {
                data: [184, 260],
                backgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ],
                hoverBackgroundColor: [
                  "#000000",
                  "#3C8DBC"
                ]
            }]
      };
      var disp = getTotal(disposalChartValues);
      displayChart(disposalChartValues, "disposalRatioChart", "Disposal Ratio", "");

    //rendering the Pending Cases
      var pendingCasesChartValues = {
          labels: [
            "Cancelled",
            "Completed",
            "Backlogged",
            "Deferred"
          ],
          datasets: [
            {
                data: [700, 500, 400, 100],
                backgroundColor: [
                  "#3c8dbc",
                  "#000000",
                  "orange",
                  "gray"
                ],
                hoverBackgroundColor: [
                  "#3c8dbc",
                  "#000000",
                  "orange",
                  "gray"
                ]
            }]
      };
      displayChart(pendingCasesChartValues, "pendingCasesChart", "Pending Cases Category", "");

      function displayChart(data, id, title, textVal) {
          Chart.defaults.global.legend.position = 'bottom';
          var promisedDeliveryChart = new Chart(document.getElementById(id), {
              type: 'doughnut',
              data: data,
              options: {
                  animation: {
                      animateScale: true
                  },
                  cutoutPercentage: 70,
                  responsive: true,
                  title: {
                      fontSize: 25,
                      display: true,
                      text: title,
                      padding: 20
                  },
                  elements: {
                      center: {
                          text: textVal,
                          color: '#000000', // Default is #000000
                          fontStyle: 'Times New Roman', // Default is Arial
                          sidePadding: 20 // Defualt is 20 (as a percentage)
                      }
                  },
                  legend: {
                      labels: {
                          padding: 10
                      },
                      display: true
                  }
              }
          });

          Chart.pluginService.register({
              beforeDraw: function (chart) {
                  if (chart.config.options.elements.center) {
                      //Get ctx from string
                      var ctx = chart.chart.ctx;

                      //Get options from the center object in options
                      var centerConfig = chart.config.options.elements.center;
                      var fontStyle = centerConfig.fontStyle || 'Arial';
                      var txt = centerConfig.text;
                      var color = centerConfig.color || '#000';
                      var sidePadding = centerConfig.sidePadding || 20;
                      var sidePaddingCalculated = (sidePadding / 100) * (chart.innerRadius * 2)
                      //Start with a base font of 30px
                      ctx.font = "40px " + fontStyle;

                      //Get the width of the string and also the width of the element minus 10 to give it 5px side padding
                      var stringWidth = ctx.measureText(txt).width;
                      var elementWidth = (chart.innerRadius * 2) - sidePaddingCalculated;

                      // Find out how much the font can grow in width.
                      var widthRatio = elementWidth / stringWidth;
                      var newFontSize = Math.floor(30 * widthRatio);
                      var elementHeight = (chart.innerRadius * 2);

                      // Pick a new font size so it will not be larger than the height of label.
                      var fontSizeToUse = Math.min(newFontSize, elementHeight);

                      //Set font settings to draw it correctly.
                      ctx.textAlign = 'center';
                      ctx.textBaseline = 'middle';
                      var centerX = ((chart.chartArea.left + chart.chartArea.right) / 2);
                      var centerY = ((chart.chartArea.top + chart.chartArea.bottom) / 2);
                      ctx.font = fontSizeToUse + "px " + fontStyle;
                      ctx.fillStyle = color;

                      //Draw text in center
                      ctx.fillText(txt, centerX, centerY);
                  }
              }
          });
      }
    //get Total values
      function getTotal(chart) {
          
          var dps = chart.datasets[0].data;          var sum = 0;

          for (var i = 0; i < dps.length; i++) {

              sum += dps[i];

          }
          return sum;
      }

    //-----------------------------------------------//



  
//END 
  /* jVector Maps
   * ------------
   * Create a world map with markers
   */
  $('#world-map-markers').vectorMap({
    map: 'africa_mill',
    normalizeFunction: 'polynomial',
    hoverOpacity     : 0.7,
    hoverColor       : false,
    backgroundColor: 'transparent',
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
    markers: [
    { latLng: [0.347596, 32.582520], name: "Kampala" },
    { latLng: [0.363889, 32.528611], name: "Nansana" },
    { latLng: [0.397237, 32.640557], name: "Kira" },
    { latLng: [2.7724, 32.2881], name: "Gulu" },
    { latLng: [-0.341111, 31.736111], name: "Masaka" },
    { latLng: [2.2472, 32.9000], name: "Lira" },
    { latLng: [0.3600, 32.7500], name: "Mukono" },
    { latLng: [1.431944, 31.352500], name: "Hoima" },
    { latLng: [0.5575, 31.3950], name: "Mubende" }
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
