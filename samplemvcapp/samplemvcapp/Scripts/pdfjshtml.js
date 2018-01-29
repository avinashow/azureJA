
	// If absolute URL from the remote server is provided, configure the CORS
	// header on that server.
	//var url = '../../Content/files/filing.pdf';



var pdfDoc = null,
	pageNum = 1,
	pageRendering = false,
	pageNumPending = null,
	scale = 1.3,
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
	    console.log(page);
	    var viewport = page.getViewport(scale);
		canvas.height = viewport.height;
		canvas.width = viewport.width;

		//rendering the TextLayer
			
		var canvasOffset = $('#the-canvas').offset();
		console.log(viewport);
		var $textLayerDiv = $('#text-layer').css({
			height: viewport.height+'px',
			width: viewport.width + 'px',
		}).offset({
			top: canvasOffset.top,
			left: canvasOffset.left
		}).empty();


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
function displayPDF(url) {
	// The workerSrc property shall be specified.
	PDFJS.workerSrc = '//mozilla.github.io/pdf.js/build/pdf.worker.js';

	PDFJS.getDocument(url).then(function (pdfDoc_) {
		pdfDoc = pdfDoc_;
		document.getElementById('page_count').textContent = pdfDoc.numPages;

		// Initial/first page rendering
		renderPage(pageNum);
	});
}


var zoominbutton = document.getElementById("zoominbutton");
zoominbutton.onclick = function () {
	scale = scale + 0.25;
	//displayPage(shownPdf, pageNum);
	console.log(scale);
	renderPage(pageNum);
}

var zoomoutbutton = document.getElementById("zoomoutbutton");
zoomoutbutton.onclick = function () {
	if (scale <= 0.25) {
		return;
	}
	scale = scale - 0.25;
	//displayPage(shownPdf, pageNum);
	renderPage(pageNum);
}
