<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../share/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="中国宝武集团韶关钢铁">
<meta name="author" content="中国宝武集团韶关钢铁">
<link rel="icon" href="images/logo_favicon.ico">
<title>${systemName}</title>

<!-- Bootstrap core CSS -->
<link href="${basepath}/common/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="${basepath}/common/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${basepath}/common/dist/css/sgis.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="${basepath}/common/assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<style type="text/css"></style>
<body>

<%@include file="../share/header.jsp" %>

<div class="container" style="margin-top:130px"> 
  <div class="row">
  <!-------------------------------------  超小屏幕隐藏-->
    <div class="col-md-2 hidden-xs">
     <!-- 二级导航 -->
	   <%@include file="../share/secondBar.jsp" %>
     <!-- 二级导航 --> 
    </div>
    <div class="col-md-10">
    <!--  CONTENT CONTAINER -->
    <div class="content-container">
     
     
        <!--页面名称-->
        <div class="pageName">
          <h2>${secondBar.newsTypeName}</h2>
        </div>
    
      <hr>
      </div>
      <!--内容主体-->
      <div class="content-body">
      
        <!-- CLASSIFIED_TAB -->
        <div class="classified-tab" >
          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#1" aria-controls="1" role="tab" data-toggle="tab">华欣环保</a></li>
            <li role="presentation"><a href="#2" aria-controls="2" role="tab" data-toggle="tab">昆仑科技</a></li>
            <li role="presentation"><a href="#3" aria-controls="3" role="tab" data-toggle="tab">南华置业</a></li>
            <li role="presentation"><a href="#4" aria-controls="4" role="tab" data-toggle="tab">韶钢嘉阳</a></li>
            <li role="presentation"><a href="#5" aria-controls="5" role="tab" data-toggle="tab">韶钢工程</a></li>
            <li role="presentation"><a href="#6" aria-controls="6" role="tab" data-toggle="tab">韶钢金属</a></li>
          </ul>
        
          <!-- Tab panes -->
          <div class="tab-content ">
            <div role="tabpanel" class="tab-pane active" id="1">
            
              <!--  PRODUCTION CONTENT  -->
              <div class="production-content">
                
                <h3 class="multiple-domain-title">华欣环保</h3>
                
                <p>广东华欣环保科技有限公司是宝武集团广东韶关钢铁有限公司旗下全资子公司，注册资本金6000万元，员工约400人，其中环保、冶金、机械及化工等专业技术人员近60人。</p>
                <p>公司一直专注于冶金固废资源综合利用、钙产品生产加工、城市及工业污水处理、土壤修复等领域， 拥有省级工业污染治理及废物利用工程技术研究开发中心，具备环境污染治理废水、固废处理及污染修复专业资质，现有冶金固废加工处理、钙产品生产加工等多条产线，并负责韶钢生活及工业污水处理系统综合性总包运营</p>
                
                <!-- 联系方式 -->
                <div class="contact-info">
                  <p>电话：0751-8785743</p>
                  <p>传真号：0751-8785743</p>
                  <p> 邮编：512123</p>    
                </div>

              </div><!--  PRODUCTION CONTENT END  -->
            </div>
            
             <div role="tabpanel" class="tab-pane" id="2">
              <!--  PRODUCTION CONTENT  -->
              <div class="production-content">
                
                <h3 class="multiple-domain-title">昆仑科技</h3>
                
                <p>广东昆仑信息科技有限公司成立于2013年4月，前身是广东韶关钢铁信息部，是宝武集团广东韶关钢铁的旗舰子公司，是广东省重点支持的IT企业，粤北地区最大型的信息技术和业务解决方案公司、行业龙头企业，是推动"两化融合"、"互联网+智慧农业"、"互联网+智能制造"、工业云平台的核心技术力量，是一家集开发、生产、销售计算机软硬件、提供技术服务于一体的高科技公司。</p>
                <p>公司人才荟萃，本科及以上学历超过90%，中级以上职称达85%，拥有"全国五一劳动奖章获得者"、"广东省五一劳动奖章获得者"、"省扬帆计划高层次人才"、"全国青年岗位能手"、"行业全国技术能手"、"广东青年岗位能手"等各类拔尖人才10人。公司已通过ISO9001质量管理体系、双软企业、CMMI 3、信息系统集成及服务（三级）、政府采购招标代理（乙级）、广东省工业软件工程技术研究中心等相关体系资质认证，取得38项软件著作权。</p>
                <p>公司是韶关"华南数谷"大数据产业园首批入驻企业，拥有30年的信息化、自动化、系统集成解决方案经验，在工业化和信息化融合领域综合实力处省内领先水平，是极具竞争力的国内中小型组织平台软件特色企业。近年来，通过实施集中化战略，积极构建推动产业发展与集群整合的核心能力，公司先后荣获"广东省'互联网+'试点企业"、"中国智慧城市云计算应用创新奖"。未来，公司将励精图治，加快推进大数据分析、物联网、云计算、智能制造、食品溯源、智慧城市重点技术深度研究，利用互联网+技术优势，充分聚焦协同制造、两化融合等领域，全力打造华南及周边地区拥有完整的业务链、极具行业竞争力和品牌影响力的IT企业。</p>
                
                <!-- 联系方式 -->
                <div class="contact-info">
                  <p>邮编： 512123</p>
                  <p>传真1：0751-6916010</p>
                  <p>传真2：0751-8786149</p>
                  <p>电话：0751-6916003（国先生）</p>
                  <p>地址（总部）)：广东省韶关市武江区沐溪大道168号莞韶产业创新园11号昆仑大楼</p>    
                  <p>地址（曲江）：广东省韶关市曲江区韶钢北区智能一体化大楼</p>    
                  <p>地址（广州）：广州市荔湾区西村西增路内协和路10号</p>    
                </div>  
              </div><!--  PRODUCTION CONTENT END  -->
            </div>
            
            
            <div role="tabpanel" class="tab-pane" id="3">
              <!--  PRODUCTION CONTENT  -->
              <div class="production-content">
                
                <h3 class="multiple-domain-title">南华置业</h3>
                
                <p>广东南华置业有限公司（以下简称南华置业）是中国宝武钢铁集团有限公司旗下广东韶关钢铁有限公司的不动产板块旗舰子公司。</p>
                <p>其前身韶关市曲江韶钢房地产开发有限公司，于2011年12月26日注册成立，2013年7月更名为广东南华置业有限公司，2017年9月吸收合并广东韶钢现代产业发展有限公司。南华置业注册资本9856万元，拥有房地产企业资质等级三级资质、国家城市园林绿化三级资质、广东省清洁环卫服务四级资质。主营业务为房地产开发经营、园林绿化、商务咨询、、酒店住宿、工业旅游，经营范围还包括环卫保洁、物业管理、饮料生产、餐饮服务、水电气安装维修、房屋维修等。2018年1月在册员工190人。</p>
                <p>在当今信息通达、资源共享的时代，依托母公司的强大实力和社会资源优势，南华置业将以开放的胸怀、合作的态度、专业的知识，秉承"担当、专注、争先"精神，以"房地产+园林绿化+员工服务"为核心业务，努力构筑粤北地区最具竞争力的多元化、综合性置业公司！</p>
                
                <!-- 联系方式 -->
                <div class="contact-info">
                  <p>业务联系电话：0751-8785361</p>
                  <p>传真：0751-8785530</p>
                  <p>办公地址：广东省韶关市曲江区韶钢大道1号南华商务中心</p>    
                </div>
              </div><!--  PRODUCTION CONTENT END  -->
            </div>
            
            
            <div role="tabpanel" class="tab-pane" id="4">
              <!--  PRODUCTION CONTENT  -->
              <div class="production-content">
                
                <h3 class="multiple-domain-title">韶钢嘉阳</h3>
                
                <p>广东韶钢嘉羊新型材料有限公司是由广东韶关钢铁集团有限公司、香港嘉华建材有限公司、广东省羊城建材供应有限公司共同投资设立的中外合资经营企业，三条年产60万吨粒化高炉矿渣微粉生产线，年生产能力180万吨，厂部设立在广东韶钢集团公司内，技术力量雄厚，有一支团结进取精神并具有战斗力的团队，企业运作规范高效。</p>
                <p>韶钢嘉羊公司以发展绿色环保建材产品为主业，粒化高炉矿渣微粉生产线，采用先进的技术和现代管理方法加工处理韶钢固体废弃物资源，通过成熟的集烘干、粉磨、选粉于一体的立磨终粉磨工艺，主体设备是德国伯利休斯公司生产的立磨，工艺技术装备达到国际先进水平，生产线配置有先进的质量检测设备，从原材料进厂至产品出厂均建立了一整套严格的安全、环保、品质保证管理体系，全面建立管理制度并规范实施，严格质量体系过程的控制管理，获得了ISO9001：2008质量管理体系认证，确保出厂产品合格率100%，用户对本公司产品的质量信誉和满意度高，创出了品牌效应，公司实行了先进的数据化管理，建立了全方位管理的计算机管理平台，信息管理网络化。</p>
                <p>通过投资方及合营公司的共同努力，将本公司发展成为广东省以至华南地区最大的矿渣微粉等资源，综合利用系列产品的生产经营企业，为发展循环经济，环保产业做出更大的贡献。</p>
                
                <!-- 联系方式 -->
                <div class="contact-info">
                  <p>公司电话：8791908</p>
                  <p>传真：8797506</p>    
                </div>
                   
              </div><!--  PRODUCTION CONTENT END  -->
            </div>
            
           
            
            <div role="tabpanel" class="tab-pane" id="5">
              <!--  PRODUCTION CONTENT  -->
              <div class="production-content">
                
                <h3 class="multiple-domain-title">韶钢工程</h3>
                
                <p>广东韶钢工程技术有限公司（简称韶钢工程）位于广东省韶关市曲江区，由原广东韶钢建设有限公司更名，在吸纳和整合原韶钢设计院、机械制造厂、计控仪表及衡器维修工段的基础上，于2013年4月3日正式成立，为韶关钢铁全资子公司，国家高新技术企业。截至2017年底在册员工821人，专业技术人员459人，是一支拥有全国劳模、全国技术能手的专业技术团队。2017年，实现营业收入30855万元，利润732万元，完成年度考核目标的292.8%，外拓业务收入3728.9万元。</p>
                <p>韶钢工程具有冶金工程施工总承包壹级、钢结构工程专业承包壹级，建筑工程施工总承包、装修装饰工程专业承包贰级，市政工程、建筑机电安装工程专业承包叁级、预拌商品混凝土专业不分等级，同时还有冶金行业、环境工程、建筑行业专业乙级设计资质，工程咨询丙级，特种设备设计许可证（压力管道）（GB1、GB2、GC2、GC2、GD2级）、道路运输经营许可证（二类机动车维修）等资质。</p>
                
                <!-- 联系方式 -->
                <div class="contact-info">
                  <p>办公电话：0751-8796162</p>
                  <p>传真：0751-8794101</p>    
                  <p>地址：广东省韶关市曲江区马坝镇韶钢东区</p>
                </div> 
              </div><!--  PRODUCTION CONTENT END  -->
            </div>
            
            <div role="tabpanel" class="tab-pane" id="6">
              <!--  PRODUCTION CONTENT  -->
              <div class="production-content">
                
                <h3 class="multiple-domain-title">韶钢工程</h3>
                
                <p>广东韶钢工程技术有限公司（简称韶钢工程）位于广东省韶关市曲江区，由原广东韶钢建设有限公司更名，在吸纳和整合原韶钢设计院、机械制造厂、计控仪表及衡器维修工段的基础上，于2013年4月3日正式成立，为韶关钢铁全资子公司，国家高新技术企业。截至2017年底在册员工821人，专业技术人员459人，是一支拥有全国劳模、全国技术能手的专业技术团队。2017年，实现营业收入30855万元，利润732万元，完成年度考核目标的292.8%，外拓业务收入3728.9万元。</p>
                <p>韶钢金属主要生产销售PC钢棒产品，现拥有5条PC钢棒生产线，具备年产12万吨能力，产品有∮7.1mm、∮9.0mm、∮10.7mm和∮12.6mm四个规格，产品优质，经营诚信，在华南地区享有良好的声誉。</p>
                <p>韶钢金属是韶关钢铁旗舰子公司，致力于发展钢铁延伸加工产业，前景广阔，势头强劲，将打造成为华南地区最具竞争力的PC钢棒供应和服务商，成为韶关钢铁多元产业发展的璀璨明珠。</p>
                
                <!-- 联系方式 -->
                <div class="contact-info">
                  <p>联系电话：0751-8792208</p>
                  <p>业务电话：0757-86704918</p>    
                  <p>公司地址：中国广东省韶关市曲江区马坝韶关钢铁内</p>
                </div> 
              </div><!--  PRODUCTION CONTENT END  --></p>
            </div>
            
            
          </div>
          <hr>
        </div> <!-- CLASSIFIED_TAB END -->
      </div>
      
    </div>
    <!--  CONTENT CONTAINER END -->
    </div>
    
    <!-------------------------------------  超小屏幕可见-->
    <div class="col-md-2 visible-xs">
      <!-- 二级导航 -->
	   <%@include file="../share/secondBar.jsp" %>
     <!-- 二级导航 --> 
    </div>
    
  </div>


<%@include file="../share/footer.jsp" %>

<!-- Bootstrap core JavaScript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="${basepath}/common/assets/js/vendor/jquery.min.js"></script> 
<script src="${basepath}/common/dist/js/bootstrap.min.js"></script> 

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
<script src="${basepath}/common/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
