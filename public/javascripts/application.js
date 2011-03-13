/*$('a[data-method="delete"]').live('ajax:success', function(){})*/
/*$('a[data-method="delete"]').live('ajax:success',
  function(e, data, textStatus, jqXHR){
    alert(data.name + ' has been deleted');
  }
);*/

$(function(){
  var uploader = new plupload.Uploader({
    runtimes : "html5",
    browse_button : 'pickfiles',
    max_file_size : '10mb',
    url : "/songs",
    filters : {
      title : "Audio files", extensions : "mp3,aac,aif,iff,m3u,mid,mpa,ra,wav,wma"
    }, 
    multipart: true,
    multipart_params: {
     "authenticity_token" : '<%= form_authenticity_token %>'
    }
  });

  uploader.bind('BeforeUpload', function(up, files) {
    $.extend(up.settings.multipart_params, { title : $('#title').val() });
  });

  uploader.bind('FilesAdded', function(up, files) {
    $.each(files, function(i, file) {
      $('#filelist').append(
        '<div id="' + file.id + '">' +
        'File: ' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b>' +
        '</div>'
        );
      $('#filelist').css("color","red");
    });
  });

  uploader.bind('UploadProgress', function(up, file) {
    $('#' + file.id + " b").html(file.percent + "%");
  });

  $('#uploadfiles').click(function(e) {
    uploader.start();
    e.preventDefault();
  });

  uploader.init();
});
