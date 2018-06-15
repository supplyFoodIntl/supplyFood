#//# Place all the behaviors and hooks related to the matching controller here.
#//# All this logic will automatically be available in application.js.
#//# You can use CoffeeScript in this file: http://coffeescript.org/
#//
#//#autocomplete
#//jQuery ->
#$(document).ready ->
#  $('#public_place_form').on 'ajax:complete', (event, data, status) ->
#    $('#result_search').html data.responseText
#    return
#  return
#    
#search_by_code(event) ->
#  search_text =$("#search_code").value
#  search_result_url = "/postal_code_hints_search?search=code&code=" + search_text
#  $("#result_search").innerHTML=ajaxresponse(search_result_url)
#  false
#
#search_by_hint = (event) ->
#  search_text = document.getElementById('search_hint').value
#  search_result_url = '/postal_code_hints_search?search=hint&hint=' + search_text
#  document.getElementById('result_search').innerHTML = httpGet(search_result_url)
#  #event.preventDefault();
#  false
#
#set_id = (obj_id, new_value) ->
#  document.getElementById(obj_id).value = new_value
#  return
