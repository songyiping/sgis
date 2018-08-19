function fnFormatDetails ( oTable, nTr )
{
    var aData = oTable.fnGetData( nTr );
    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
    sOut += '<tr><td>用户姓名:</td><td>'+aData[2]+'</td><td>用户Email:</td><td>'+aData[3]+'</td></tr>';
    sOut += '<tr><td>用户IP:</td><td>'+aData[5]+'</td><td>用户地址:</td><td>'+aData[6]+'</td></tr>';
    sOut += '<tr><td>用户浏览器类型:</td><td>'+aData[7]+'</td><td>用户系统类型:</td><td>'+aData[8]+'</td></tr>';
    sOut += '<tr><td>提交时间:</td><td>'+aData[9]+'</td></tr>';
    sOut += '<tr><td>反馈信息:</td><td colspan=2>'+aData[1]+'</td></tr>';
    sOut += '<tr><td>处理人员:</td><td>'+aData[10]+'</td><td>处理时间:</td><td>'+aData[11]+'</td></tr>';
    sOut += '<tr><td>处理方案:</td><td colspan=2>'+aData[12]+'</td></tr>';
    sOut += '</table>';

    return sOut;
}

$(document).ready(function() {

    $('#dynamic-table').dataTable( {
        "aaSorting": [[ 4, "desc" ]]
    } );

    /*
     * Insert a 'details' column to the table
     */
    var nCloneTh = document.createElement( 'th' );
    var nCloneTd = document.createElement( 'td' );
    nCloneTd.innerHTML = '<img src="../../backstage/images/details_open.png">';
    nCloneTd.className = "center";

    $('#hidden-table-info thead tr').each( function () {
        this.insertBefore( nCloneTh, this.childNodes[0] );
    } );

    $('#hidden-table-info tbody tr').each( function () {
        this.insertBefore(  nCloneTd.cloneNode( true ), this.childNodes[0] );
    } );

    /*
     * Initialse DataTables, with no sorting on the 'details' column
     */
    var oTable = $('#hidden-table-info').dataTable( {
        "aoColumnDefs": [
            { "bSortable": false, "aTargets": [ 0 ] }
        ],
        "aaSorting": [[1, 'asc']]
    });

    /* Add event listener for opening and closing details
     * Note that the indicator for showing which row is open is not controlled by DataTables,
     * rather it is done here
     */
    $(document).on('click','#hidden-table-info tbody td img',function () {
        var nTr = $(this).parents('tr')[0];
        if ( oTable.fnIsOpen(nTr) )
        {
            /* This row is already open - close it */
            this.src = "../../backstage/images/details_open.png";
            oTable.fnClose( nTr );
        }
        else
        {
            /* Open this row */
            this.src = "../../backstage/images/details_close.png";
            oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
        }
    } );
} );