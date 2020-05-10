[aviable=xfsearch]
  <style>
    table {
      max-width: 100%;
      background-color: #fff;
      border-collapse: collapse;
      border-spacing: 0;
    }
    .xf-search-table {
      width: 100%;
      margin-bottom: 20px;
    }
    .xf-search-table th,
    .xf-search-table td {
      padding: 8px;
      line-height: 20px;
      text-align: left;
      vertical-align: top;
      border: 1px solid #f1f3f5;
    }
    .xf-search-table th {
      font-weight: bold;
      background: #495057;
      border: none;
      color: #f8f9fa;
    }
    .xf-search-table-green {
      background: #b2f2bb;
    }
    .xf-search-table-red {
      background: #ffa8a8;
    }
    .xf-search-table-current {
      background: #d0ebff;
    }
    .xf-search-table a {
      color: #adb5bd;
    }
    .xf-search-table b {
      color: #15aabf;
    }
  </style>

  <table class="xf-search-table">
    <tr>
      <th>Тег</th>
      <th>Сработал</th>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/test-field/">&#91;xfsearch=<b>test-field</b>]...&#91;xfsearch]</a>
      </td>
      <td class="
          [xfsearch=test-field]xf-search-table-green[/xfsearch]
          [not-xfsearch=test-field]xf-search-table-red[/not-xfsearch]
          ">
        [xfsearch=test-field]Да[/xfsearch]
        [not-xfsearch=test-field]Нет[/not-xfsearch]
      </td>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/test-field/anyValue/">&#91;xfsearch=<b>test-field,test-field/*</b>]...&#91;xfsearch]</a>
      </td>
      <td class="
          [xfsearch=test-field,test-field/*]xf-search-table-green[/xfsearch]
          [not-xfsearch=test-field,test-field/*]xf-search-table-red[/not-xfsearch]
          ">
        [xfsearch=test-field,test-field/*]Да[/xfsearch]
        [not-xfsearch=test-field,test-field/*]Нет[/not-xfsearch]
      </td>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/test-field/value/">&#91;xfsearch=<b>test-field/value</b>]...&#91;xfsearch]</a>
      </td>
      <td class="
          [xfsearch=test-field/value]xf-search-table-green[/xfsearch]
          [not-xfsearch=test-field/value]xf-search-table-red[/not-xfsearch]
          ">
        [xfsearch=test-field/value]Да[/xfsearch]
        [not-xfsearch=test-field/value]Нет[/not-xfsearch]
      </td>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/test-field/anyValue/">&#91;xfsearch=<b>test-field/value,test-field/*</b>]...&#91;xfsearch]</a>
      </td>
      <td class="
          [xfsearch=test-field/value,test-field/*]xf-search-table-green[/xfsearch]
          [not-xfsearch=test-field/value,test-field/*]xf-search-table-red[/not-xfsearch]
          ">
        [xfsearch=test-field/value,test-field/*]Да[/xfsearch]
        [not-xfsearch=test-field/value,test-field/*]Нет[/not-xfsearch]
      </td>
    </tr>


    <tr>
      <td>
        <a href="/xfsearch/not-test-field/">&#91;not-xfsearch=<b>test-field</b>]...&#91;not-xfsearch]</a>
      </td>
      <td class="
          [not-xfsearch=test-field]xf-search-table-green[/not-xfsearch]
          [xfsearch=test-field]xf-search-table-red[/xfsearch]
          ">
        [not-xfsearch=test-field]Да[/not-xfsearch]
        [xfsearch=test-field]Нет[/xfsearch]
      </td>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/not-test-field/anyValue/">&#91;not-xfsearch=<b>test-field,test-field/*</b>]...&#91;not-xfsearch]</a>
      </td>
      <td class="
          [not-xfsearch=test-field,test-field/*]xf-search-table-green[/not-xfsearch]
          [xfsearch=test-field,test-field/*]xf-search-table-red[/xfsearch]
          ">
        [not-xfsearch=test-field,test-field/*]Да[/not-xfsearch]
        [xfsearch=test-field,test-field/*]Нет[/xfsearch]
      </td>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/not-test-field/value/">&#91;not-xfsearch=<b>test-field/value</b>]...&#91;not-xfsearch]</a>
      </td>
      <td class="
          [not-xfsearch=test-field/value]xf-search-table-green[/not-xfsearch]
          [xfsearch=test-field/value]xf-search-table-red[/xfsearch]
          ">
        [not-xfsearch=test-field/value]Да[/not-xfsearch]
        [xfsearch=test-field/value]Нет[/xfsearch]
      </td>
    </tr>
    <tr>
      <td>
        <a href="/xfsearch/not-test-field/anyValue/">&#91;not-xfsearch=<b>test-field/value,test-field/*</b>]...&#91;not-xfsearch]</a>
      </td>
      <td class="
          [not-xfsearch=test-field/value,test-field/*]xf-search-table-green[/not-xfsearch]
          [xfsearch=test-field/value,test-field/*]xf-search-table-red[/xfsearch]
          ">
        [not-xfsearch=test-field/value,test-field/*]Да[/not-xfsearch]
        [xfsearch=test-field/value,test-field/*]Нет[/xfsearch]
      </td>
    </tr>

  </table>

  <script>
    document.addEventListener("DOMContentLoaded", function(event) {
      var pathname = window.location.pathname;
      $('.xf-search-table a').each(function () {
        var linkUrl = $(this).attr('href');
        if(pathname === linkUrl) {
          $(this).closest('tr').addClass('xf-search-table-current');
        }
        // console.log(linkUrl);
      });
    });

  </script>

[/aviable]