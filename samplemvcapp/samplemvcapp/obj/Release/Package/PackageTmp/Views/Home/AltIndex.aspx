<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Alt.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
	
	Home Page - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="indexFeatured" ContentPlaceHolderID="HeadContent" runat="server">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.42/css/bootstrap-datetimepicker.min.css" />
	<link rel="stylesheet" href="../../Content/fullcalendar.min.css" />
	<style>
		@import "//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css";
		@import "http://fonts.googleapis.com/css?family=Roboto:400,500";

		.box > .icon { 
		text-align: center; position: relative;4
		}
		.box > .icon > .image { 
		position: relative;color:white;font-size:20px; z-index: 2; margin: auto; width: 300px; height: 88px; border: 8px solid white; line-height: 88px; border-radius: 20px; background: #63B76C; vertical-align: middle; 
		}
		.box > .icon:hover > .image {
		background: #333;
		}
		.box > .icon > .image > i { 
		font-size: 36px !important; color: #fff !important; 
		}
		.box > .icon:hover > .image > i { 
		color: white !important; 
		}
		.box > .icon > .info { 
		margin-top: -24px; background: rgba(0, 0, 0, 0.04); border: 1px solid #e0e0e0; padding: 15px 0 10px 0; 
		}
		.box > .icon:hover > .info { 
		background: rgba(0, 0, 0, 0.04); border-color: #e0e0e0; color: white; 
		}
		.box > .icon > .info > h3.title { 
		font-family: "Roboto",sans-serif !important; font-size: 16px; color: #222; font-weight: 500; 
		}
		.box > .icon > .info > p { font-family: "Roboto",sans-serif !important; font-size: 13px; color: #666; line-height: 1.5em; margin: 20px;}
		.box > .icon:hover > .info > h3.title, .box > .icon:hover > .info > p, .box > .icon:hover > .info > .more > a { color: #222; }
		.box > .icon > .info > .more a { font-family: "Roboto",sans-serif !important; font-size: 12px; color: #222; line-height: 12px; text-transform: uppercase; text-decoration: none; }
		.box > .icon:hover > .info > .more > a { color: #fff; padding: 6px 8px; background-color: #63B76C; }
		.box .space { height: 30px; }
	</style>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col-md-5" style="padding:20px;border-radius:20px">
			
			<div id='calendar' style="background-color:#5cb85c;border-radius:20px"></div>
			<div id='datepicker'></div>

			<div class="modal fade" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title">Create new event</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="title">Event title</label>
									<input type="text" name="title" id="title" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="starts-at">Starts at</label>
									<input type="text" name="starts_at" id="starts-at" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="ends-at">Ends at</label>
									<input type="text" name="ends_at" id="ends-at" />
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="save-event">Save changes</button>
						</div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		</div>

		<div class="col-md-6">
			<div class="box">							
				<div class="icon">
					<div class="image"><i class="fa fa-desktop"></i><span style="padding-left:10px"></span></div>
					<div class="info">
						<h3 class="title">Desktop Friendly</h3>
						<p>
							Soo much content, soo little time. Omg. Dude this is a lot of content!
						</p>
						<div class="more">
							<a href="#" title="Title Link">
								Link here <i class="fa fa-angle-double-right"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="space"></div>
			</div>
		</div>
	</div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment-with-locales.min.js"></script>
	<script src="../../Scripts/fullcalendar.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.42/js/bootstrap-datetimepicker.min.js"></script>
	<script>
		$(document).ready(function () {
			$('#calendar').fullCalendar({
				header: {
					left: '',
					center: 'prev title, next',
					right: ''
				},
				navLinks: true, // can click day/week names to navigate views
				selectable: true,
				selectHelper: true,
				select: function (start, end) {
					// Display the modal.
					// You could fill in the start and end fields based on the parameters
					$('.modal').modal('show');

				},
				eventClick: function (event, element) {
					// Display the modal and set the values to the event values.
					$('.modal').modal('show');
					$('.modal').find('#title').val(event.title);
					$('.modal').find('#starts-at').val(event.start);
					$('.modal').find('#ends-at').val(event.end);

				},
				editable: true,
				eventLimit: true // allow "more" link when too many events

			});

			// Bind the dates to datetimepicker.
			// You should pass the options you need
			$("#starts-at, #ends-at").datetimepicker();

			// Whenever the user clicks on the "save" button om the dialog
			$('#save-event').on('click', function () {
				var title = $('#title').val();
				if (title) {
					var eventData = {
						title: title,
						start: $('#starts-at').val(),
						end: $('#ends-at').val()
					};
					$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				}
				$('#calendar').fullCalendar('unselect');

				// Clear modal inputs
				$('.modal').find('input').val('');

				// hide modal
				$('.modal').modal('hide');
			});
		});

	</script>
	  
</asp:Content>