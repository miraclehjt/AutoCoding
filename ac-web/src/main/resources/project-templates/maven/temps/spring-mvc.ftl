<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:mvc="http://www.springframework.org/schema/mvc"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:aop="http://www.springframework.org/schema/aop"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                        http://www.springframework.org/schema/beans/spring-beans-4.0.xsd
                        http://www.springframework.org/schema/mvc
                        http://www.springframework.org/schema/mvc/spring-mvc.xsd http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd http://www.springframework.org/schema/aop http://www.springframework.org/schema/aop/spring-aop.xsd">

    <!-- 扫描@controller -->
    <context:component-scan base-package="com.jifuwei.ac"/>

    <!-- 配置注解驱动 -->
    <mvc:annotation-driven validator="validator"/>

    <!-- 以下 validator  ConversionService 在使用 mvc:annotation-driven 会自动注册-->
    <bean id="validator" class="org.springframework.validation.beanvalidation.LocalValidatorFactoryBean">
        <!-- hibernate校验器-->
        <property name="providerClass" value="org.hibernate.validator.HibernateValidator"/>
        <!-- 如果不加默认到 使用classpath下的 ValidationMessages.properties -->
        <property name="validationMessageSource" ref="messageSource"/>
    </bean>

    <!-- 国际化的消息资源文件（本系统中主要用于显示/错误消息定制） -->
    <bean id="messageSource" class="org.springframework.context.support.ReloadableResourceBundleMessageSource">
        <property name="basenames">
            <list>
                <!-- 在web环境中一定要定位到classpath 否则默认到当前web应用下找，不需要加文件后缀.properties  -->
                <value>classpath:valid-message/valid_message_zh_CN</value>
            </list>
        </property>
        <property name="useCodeAsDefaultMessage" value="false"/>
        <property name="defaultEncoding" value="UTF-8"/>
        <property name="cacheSeconds" value="60"/>
    </bean>

    <!--静态资源映射-->
    <mvc:resources mapping="/css/**" location="/WEB-INF/statics/css/"/>
    <mvc:resources mapping="/js/**" location="/WEB-INF/statics/js/"/>
    <mvc:resources mapping="/images/**" location="/WEB-INF/statics/images/"/>


    <!-- 对模型视图名称的解析，即在模型视图名称添加前后缀(如果最后一个还是表示文件夹,则最后的斜杠不要漏了) 使用JSP-->
    <!-- 默认的视图解析器 在上边的解析错误时使用 (默认使用html)- -->
    <!--<bean id="defaultViewResolver" class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="viewClass" value="org.springframework.web.servlet.view.JstlView"/>
        <property name="prefix" value="/WEB-INF/view/"/>&lt;!&ndash;设置JSP文件的目录位置&ndash;&gt;
        <property name="suffix" value=".jsp"/>
    </bean>-->


    <!-- 文件上传 start 配置文件上传，如果没有使用文件上传可以不用配置，当然如果不配，那么配置文件中也不必引入上传组件包 -->
    <bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
        <!-- 默认编码 -->
        <property name="defaultEncoding" value="UTF-8"/>
        <!-- 文件大小最大值 上传文件大小限制为10M，10*1024*1024 -->
        <property name="maxUploadSize" value="10485760"/>
        <!-- 内存中的最大值 -->
        <property name="maxInMemorySize" value="4096"/>
    </bean>
    <!--文件上传 end-->

    <!-- 切面配置:接口参数校验 -->
    <bean id="bindingResultAOP" class="com.jifuwei.ac.foundation.aop.BindingResultAOP"/>
    <aop:config>
        <aop:pointcut id="bindingResultAOPPointcut"
                      expression="execution(* ${domainName}.${projectName}.*.controller.*Controller.*(..) )"/>
        <aop:aspect id="controllerVaildAspect" ref="bindingResultAOP">
            <aop:around method="aroundMethod" pointcut-ref="bindingResultAOPPointcut"/>
        </aop:aspect>
    </aop:config>

</beans>