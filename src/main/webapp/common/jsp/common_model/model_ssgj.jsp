<%@ page language="java" pageEncoding="UTF-8"%>
 <div class="col-md-4 content-sectors">
      <div class="content-sectors-header">
        <h4>实时股价<span class="more"><a href="#">更多</a></span></h4>
        <h5>SHARE PRICE</h5>
      </div>
      
      <!--  REAL-TIME SHARES  -->
      <div class="sharePrice-container" style="background-image: url(${basepath}/common/images/share-price-pic.jpg);">
        <table class="table index-table">
          <caption>
          </caption>
          <thead>
            <tr>
              <th>上市企业</th>
              <th>代码</th>
              <th>股价</th>
              <th>涨跌</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">宝钢股份</th>
              <td>600019.SS</td>
              <td><input type="text" id="sh600019_1" class="stockinput" /></td>
              <td><input type="text" id="sh600019_2" class="stockinput3" /></td>
            </tr>
            <tr>
              <th scope="row">韶钢松山</th>
              <td>000717.SZ</td>
              <td><input type="text" id="sz000717_1" class="stockinput" /></td>
              <td><input type="text" id="sz000717_2" class="stockinput3" /></td>
            </tr>
            <tr>
              <th scope="row">八一钢铁</th>
              <td>600581.SS</td>
              <td><input type="text" id="sh600581_1" class="stockinput" /></td>
              <td><input type="text" id="sh600581_2" class="stockinput3" /></td>
            </tr>
            <tr>
              <th scope="row">宝信软件</th>
              <td>600845.SS</td>
              <td><input type="text" id="sh600845_1" class="stockinput" /></td>
              <td><input type="text" id="sh600845_2" class="stockinput3" /></td>
            </tr>
            <tr>
              <th scope="row">宝钢包装</th>
              <td>601968.SS</td>
              <td><input type="text" id="sh601968_1" class="stockinput" /></td>
              <td><input type="text" id="sh601968_2" class="stockinput3" /></td>
            </tr>
          </tbody>
        </table>
      </div><!-- REAL-TIME SHARES  END -->
   </div>
   
