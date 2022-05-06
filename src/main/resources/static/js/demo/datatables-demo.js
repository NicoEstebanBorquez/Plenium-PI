// Call the dataTables jQuery plugin
/*$(document).ready(function() {
  $('#dataTable').DataTable();
});
*/

$(document).ready(function () {
  $('#dataTable').DataTable({
    "language": {
      "lengthMenu": "Mostrando _MENU_ elementos por página",
      "zeroRecords": "No hay elementos que mostrar",
      "info": "Mostrando página _PAGE_ de _PAGES_",
      "infoEmpty": "No hay elementos que mostrar",
      "infoFiltered": "(filtered from _MAX_ total records)",
      "search": "Buscador:",
      "paginate": {
        "previous": "Anterior",
        "next":"Siguiente"
      }
    }
  });
});

