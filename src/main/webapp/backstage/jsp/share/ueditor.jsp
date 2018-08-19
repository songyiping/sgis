<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <!--文本编辑器 start-->
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                   
                    <div class="panel-body">  
                         <!-- 加载编辑器的容器 -->
						<script id="container" name="text"  type="text/plain">
                       ${news.text}
                         </script>
                        <!-- 配置文件 -->
                        <script type="text/javascript" src="${basepath}/backstage/ueditor/ueditor.config.js"></script>
                        <!-- 编辑器源码文件 -->
                        <script type="text/javascript" src="${basepath}/backstage/ueditor/ueditor.all.js"></script>
                        <!-- 实例化编辑器 -->
                        <script type="text/javascript" >
                            var ue = UE.getEditor('container',{
                                initialFrameWidth : 990,
                                initialFrameHeight: 400,
                                allowDivTransToP: false
                            });
                           
                        </script>

                    </div>
                    <div class="btn-edit" >
                      <button type="submit" class="btn btn-success">保存文章内容</button>
                    </div> 
                </section>

            </div>
        </div>
        <!--文本编辑 器end-->