# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready_save = ->
  $(".preq-form").addClass("noDisplay")
  $(".prep-form").addClass("noDisplay")

  $(".post-type").click (e) ->
    $(".post-form").addClass("noDisplay")
    id = $(e.currentTarget).attr("id")
    form = id.replace("-sel", "")
    $("."+form).removeClass("noDisplay")

  $(".view-group-but").click (e) ->
    id = $(e.currentTarget).attr("data-id")
    # if Number.parseInt(id) != NaN
    window.location = "/groups/"+id

  $(".left-filter").click (e) ->
    $(".home-left-ele").addClass("noDisplay")
    verseCheck= $("#feed-filter-ver")[0].checked
    prayerCheck= $("#feed-filter-preq")[0].checked
    praiseCheck= $("#feed-filter-prep")[0].checked
    if  verseCheck== true
      $(".verseEle").removeClass("noDisplay")
    if  prayerCheck== true
      $(".prayerEle").removeClass("noDisplay")
    if  praiseCheck== true
      $(".praiseEle").removeClass("noDisplay")
    if verseCheck == false and prayerCheck == false and praiseCheck == false
      $(".home-left-ele").removeClass("noDisplay")


  $(".menuFilter").click (e) ->
    id = $(e.currentTarget).attr("id")
    if  id == "news-feed-tab"
      window.location = "/home/newsfeed"
    if  id == "personal-tab"
      window.location = "/home/personal"
    if  id == "groups-tab"
      window.location = "/home/groups"
    
  $(".edit-group").click (e) ->
    $('#group-edit-modal').modal('show');

  $(".add-member").click (e) ->
    $('#group-add-member-modal').modal('show');

  $("#requests").click (e) ->
    $('#requests-modal').modal('show');

  $(".modal-comment").click (e) ->
    id = $(e.currentTarget).attr("data-id")
    type = $(e.currentTarget).attr("data-type")
    $("#"+type+"-comments-modal-"+id).modal("show")

  $(".modal-like").click (e) ->
    id = $(e.currentTarget).attr("data-id")
    type = $(e.currentTarget).attr("data-type")
    $("#"+type+"-likes-modal-"+id).modal("show")

  
    



$(document).ready(ready_save)
$(document).on('page:load', ready_save)