/* Copyright 2012 Mozilla Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/* eslint-disable no-unused-vars */

'use strict';

var pdfjsVersion =
  typeof PDFJSDev !== 'undefined' ? PDFJSDev.eval('BUNDLE_VERSION') : void 0;
var pdfjsBuild =
  typeof PDFJSDev !== 'undefined' ? PDFJSDev.eval('BUNDLE_BUILD') : void 0;

var pdfjsSharedUtil = require('../../Scripts/pdfjs/src/shared/util.js');
var pdfjsDisplayGlobal = require('../../Scripts/pdfjs/src/display/global.js');
var pdfjsDisplayAPI = require('../../Scripts/pdfjs/src/display/api.js');
var pdfjsDisplayTextLayer = require('../../Scripts/pdfjs/src/display/text_layer.js');
var pdfjsDisplayAnnotationLayer = require('./display/annotation_layer.js');
var pdfjsDisplayDOMUtils = require('../../Scripts/pdfjs/src/display/dom_utils.js');
var pdfjsDisplaySVG = require('../../Scripts/pdfjs/src/display/svg.js');

if (typeof PDFJSDev === 'undefined' ||
    !PDFJSDev.test('FIREFOX || MOZCENTRAL || CHROME')) {
  const isNodeJS = require('../../Scripts/pdfjs/src/shared/is_node.js');
  if (isNodeJS()) {
    let PDFNodeStream = require('../../Scripts/pdfjs/src/display/node_stream.js').PDFNodeStream;
    pdfjsDisplayAPI.setPDFNetworkStreamFactory((params) => {
      return new PDFNodeStream(params);
    });
  } else if (typeof Response !== 'undefined' && 'body' in Response.prototype &&
             typeof ReadableStream !== 'undefined') {
    let PDFFetchStream = require('../../Scripts/pdfjs/src/display/fetch_stream.js').PDFFetchStream;
    pdfjsDisplayAPI.setPDFNetworkStreamFactory((params) => {
      return new PDFFetchStream(params);
    });
   } else {
    let PDFNetworkStream = require('../../Scripts/pdfjs/src/display/network.js').PDFNetworkStream;
    pdfjsDisplayAPI.setPDFNetworkStreamFactory((params) => {
      return new PDFNetworkStream(params);
    });
  }
} else if (typeof PDFJSDev !== 'undefined' && PDFJSDev.test('CHROME')) {
  let PDFNetworkStream = require('../../Scripts/pdfjs/src/display/network.js').PDFNetworkStream;
  let PDFFetchStream;
  if (typeof Response !== 'undefined' && 'body' in Response.prototype &&
      typeof ReadableStream !== 'undefined') {
      PDFFetchStream = require('../../Scripts/pdfjs/src/display/fetch_stream.js').PDFFetchStream;
  }
  pdfjsDisplayAPI.setPDFNetworkStreamFactory((params) => {
    if (PDFFetchStream && /^https?:/i.test(params.url)) {
      // "fetch" is only supported for http(s), not file/ftp.
      return new PDFFetchStream(params);
    }
    return new PDFNetworkStream(params);
  });
}

exports.PDFJS = pdfjsDisplayGlobal.PDFJS;
exports.build = pdfjsDisplayAPI.build;
exports.version = pdfjsDisplayAPI.version;
exports.getDocument = pdfjsDisplayAPI.getDocument;
exports.LoopbackPort = pdfjsDisplayAPI.LoopbackPort;
exports.PDFDataRangeTransport = pdfjsDisplayAPI.PDFDataRangeTransport;
exports.PDFWorker = pdfjsDisplayAPI.PDFWorker;
exports.renderTextLayer = pdfjsDisplayTextLayer.renderTextLayer;
exports.AnnotationLayer = pdfjsDisplayAnnotationLayer.AnnotationLayer;
exports.createPromiseCapability = pdfjsSharedUtil.createPromiseCapability;
exports.PasswordResponses = pdfjsSharedUtil.PasswordResponses;
exports.InvalidPDFException = pdfjsSharedUtil.InvalidPDFException;
exports.MissingPDFException = pdfjsSharedUtil.MissingPDFException;
exports.SVGGraphics = pdfjsDisplaySVG.SVGGraphics;
exports.NativeImageDecoding = pdfjsSharedUtil.NativeImageDecoding;
exports.UnexpectedResponseException =
  pdfjsSharedUtil.UnexpectedResponseException;
exports.OPS = pdfjsSharedUtil.OPS;
exports.UNSUPPORTED_FEATURES = pdfjsSharedUtil.UNSUPPORTED_FEATURES;
exports.createValidAbsoluteUrl = pdfjsSharedUtil.createValidAbsoluteUrl;
exports.createObjectURL = pdfjsSharedUtil.createObjectURL;
exports.removeNullCharacters = pdfjsSharedUtil.removeNullCharacters;
exports.shadow = pdfjsSharedUtil.shadow;
exports.createBlob = pdfjsSharedUtil.createBlob;
exports.RenderingCancelledException =
  pdfjsDisplayDOMUtils.RenderingCancelledException;
exports.getFilenameFromUrl = pdfjsDisplayDOMUtils.getFilenameFromUrl;
exports.addLinkAttributes = pdfjsDisplayDOMUtils.addLinkAttributes;
