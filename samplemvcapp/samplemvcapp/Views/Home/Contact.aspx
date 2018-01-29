<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Previous/Next example</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="../../Content/font-awesome.min.css" />
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" href="../../Scripts/pdfjs/web/text_layer_builder.css" />
  <!--<script src="//mozilla.github.io/pdf.js/build/pdf.js"></script>-->
	<script src="http://vivin.net/pub/pdfjs/pdf.js"></script>
	<script src="http://vivin.net/pub/pdfjs/textlayerbuilder.js"></script>

</head>
<body>

<h1>PDF.js Previous/Next example</h1>

<div class="container">
	<div class="row">
	  <div class="col-md-8 col-md-offset-2" style="display:flex;justify-content:center;">
		  <span class="glyphicon glyphicon-chevron-left" id="prev"></span>
		  <span>Page: <span id="page_num"></span> / <span id="page_count"></span></span>
		  <span class="glyphicon glyphicon-chevron-right" id="next"></span>
	  </div>
	</div>

	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<canvas id="the-canvas"></canvas>
			<div class="textLayer" id="text-layer">
			</div>
		</div>
	</div>
</div>




<script>
	// If absolute URL from the remote server is provided, configure the CORS
	// header on that server.
	var url = '../../Content/files/filing.pdf';

	// The workerSrc property shall be specified.
	PDFJS.workerSrc = '//mozilla.github.io/pdf.js/build/pdf.worker.js';

	var pdfDoc = null,
		pageNum = 1,
		pageRendering = false,
		pageNumPending = null,
		scale = 0.8,
		canvas = document.getElementById('the-canvas'),
		ctx = canvas.getContext('2d');

	/**
	 * Get page info from document, resize canvas accordingly, and render page.
	 * @param num Page number.
	 */
	function renderPage(num) {
		pageRendering = true;

		// Using promise to fetch the page
		pdfDoc.getPage(num).then(function (page) {
			var viewport = page.getViewport(scale);
			canvas.height = viewport.height;
			canvas.width = viewport.width;

			//rendering the TextLayer
			
			var canvasOffset = $('#the-canvas').offset();
			console.log(canvasOffset);
			var $textLayerDiv = $('#text-layer').css({
				height: viewport.height + 'px',
				width: viewport.width + 'px',
				top: '0px',
				left: '15px'
			});
			var outputScale = getOutputScale();
			if (outputScale.scaled) {
			    var cssScale = 'scale(' + (1 / outputScale.sx) + ', ' +
					(1 / outputScale.sy) + ')';
			    CustomStyle.setProp('transform', canvas, cssScale);
			    CustomStyle.setProp('transformOrigin', canvas, '0% 0%');

			    if ($textLayerDiv.get(0)) {
			        CustomStyle.setProp('transform', $textLayerDiv.get(0), cssScale);
			        CustomStyle.setProp('transformOrigin', $textLayerDiv.get(0), '0% 0%');
			    }
			}
			ctx._scaleX = outputScale.sx;
			ctx._scaleY = outputScale.sy;
			if (outputScale.scaled) {
			    ctx.scale(outputScale.sx, outputScale.sy);
			}
			var textLayer = new TextLayerBuilder($textLayerDiv.get(0), 0);
			page.getTextContent().then(function(textContent) {
				textLayer.setTextContent(textContent);
			});

			// Render PDF page into canvas context
			var renderContext = {
				canvasContext: ctx,
				viewport: viewport,
				textLayer:textLayer
			};
			var renderTask = page.render(renderContext);
			pageRendering = false;
			// Wait for rendering to finish
			/*renderTask.promise.then(function () {
				pageRendering = false;
				if (pageNumPending !== null) {
					// New page rendering is pending
					renderPage(pageNumPending);
					pageNumPending = null;
				}
			});*/
		});

		// Update page counters
		document.getElementById('page_num').textContent = num;
	}

	/**
	 * If another page rendering in progress, waits until the rendering is
	 * finised. Otherwise, executes rendering immediately.
	 */
	function queueRenderPage(num) {
		console.log(pageRendering);
		if (pageRendering) {
			pageNumPending = num;
		} else {
			renderPage(num);
		}
	}

	/**
	 * Displays previous page.
	 */
	function onPrevPage() {
		if (pageNum <= 1) {
			return;
		}
		pageNum--;
		queueRenderPage(pageNum);
	}
	document.getElementById('prev').addEventListener('click', onPrevPage);

	/**
	 * Displays next page.
	 */
	function onNextPage() {        
		console.log(pdfDoc.numPages);
		if (pageNum >= pdfDoc.numPages) {
			return;
		}
		pageNum++;
		queueRenderPage(pageNum);
	}
	document.getElementById('next').addEventListener('click', onNextPage);

	/**
	 * Asynchronously downloads PDF.
	 */
	PDFJS.getDocument(url).then(function (pdfDoc_) {
		pdfDoc = pdfDoc_;
		document.getElementById('page_count').textContent = pdfDoc.numPages;

		// Initial/first page rendering
		renderPage(pageNum);
	});

</script>

</body>
</html>