<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>${domainName}</groupId>
    <artifactId>${projectName}</artifactId>
    <packaging>war</packaging>
    <version>1.0-SNAPSHOT</version>

    <description>
        ${projectZhName}
    </description>

    <properties>
        <!-- 基础配置 -->
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>

        <!-- 插件配置 -->
        <jdk.version>1.7</jdk.version>
        <war-name.version>autocoding</war-name.version>
        <tomcat-port.version>8080</tomcat-port.version>
        <tomcat-uri-encoding.version>UTF-8</tomcat-uri-encoding.version>
        <tomcat-path.version>/</tomcat-path.version>
        <jetty-port.version>8080</jetty-port.version>
        <jetty-path.version>/</jetty-path.version>

        <!-- jar包版本管理 start -->
        <spring.version>4.0.3.RELEASE</spring.version>
        <fastjson.version>1.2.2</fastjson.version>
        <jackson.version>1.9.13</jackson.version>

        <mysql-connector.version>5.1.29</mysql-connector.version>
        <oracle.version>11.1.0.7.0</oracle.version>
        <redis.version>2.6.0</redis.version>
        <druid.version>1.0.4</druid.version>

        <httpcomponents.version>4.4.1</httpcomponents.version>

        <junit.version>4.7</junit.version>

        <shiro.version>1.2.1</shiro.version>
        <freemarker.version>2.3.25-incubating</freemarker.version>
        <javassist.version>3.19.0-GA</javassist.version>

        <servlet-api.version>2.5</servlet-api.version>
        <javaee-api.version>7.0</javaee-api.version>

        <slf4j.version>1.7.7</slf4j.version>
        <log4j.version>1.2.17</log4j.version>

        <ant.version>1.9.7</ant.version>
        <validation.version>1.1.0.Final</validation.version>
        <hibernate.validator.version>5.0.1.Final</hibernate.validator.version>

        <aspect.version>1.8.9</aspect.version>

        <commons-fileupload.version>1.3.1</commons-fileupload.version>
        <commons-io.version>2.4</commons-io.version>
        <commons-lang3.version>3.3.2</commons-lang3.version>
        <commons-email.version>1.3.2</commons-email.version>
        <commons-beanutils.version>1.9.2</commons-beanutils.version>
        <!-- jar包版本管理 end -->

        <!-- 插件版本管理 start -->
        <tomcat6-maven-plugin.version>2.1</tomcat6-maven-plugin.version>
        <tomcat7-maven-plugin.version>2.2</tomcat7-maven-plugin.version>
        <jetty-plugin.version>8.1.16.v20140903</jetty-plugin.version>

        <maven-compiler-plugin.version>3.1</maven-compiler-plugin.version>
        <maven-war-plugin.version>2.3</maven-war-plugin.version>
        <maven-resources-plugin.version>2.6</maven-resources-plugin.version>
        <maven-install-plugin.version>2.4</maven-install-plugin.version>
        <maven-clean-plugin.version>2.5</maven-clean-plugin.version>
        <maven-antrun-plugin.version>1.7</maven-antrun-plugin.version>
        <maven-dependency-plugin.version>2.5.1</maven-dependency-plugin.version>
        <maven-source-plugin.version>2.2.1</maven-source-plugin.version>
        <!-- 插件版本管理 end -->
    </properties>

    <dependencies>

        <!-- spring config start -->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-core</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-beans</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-web</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-webmvc</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-oxm</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-tx</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-orm</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-jdbc</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-context-support</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-test</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <!--<dependency>-->
        <!--<groupId>org.springframework</groupId>-->
        <!--<artifactId>spring-aspects</artifactId>-->
        <!--<version>${r"${spring.version}"}</version>-->
        <!--</dependency>-->
        <dependency>
            <groupId>org.springframework</groupId>
            <artifactId>spring-aop</artifactId>
            <version>${r"${spring.version}"}</version>
        </dependency>
        <!-- spring config end -->

        <!-- mysql connect -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>${r"${mysql-connector.version}"}</version>
        </dependency>

        <!-- druid连接池 -->
        <dependency>
            <groupId>com.alibaba</groupId>
            <artifactId>druid</artifactId>
            <version>${r"${druid.version}"}</version>
        </dependency>

        <!-- oracle connect -->
        <dependency>
            <groupId>com.oracle</groupId>
            <artifactId>ojdbc6</artifactId>
            <version>${r"${oracle.version}"}</version>
            <scope>runtime</scope>
        </dependency>

        <!-- httpclient util -->
        <dependency>
            <groupId>org.apache.httpcomponents</groupId>
            <artifactId>httpclient</artifactId>
            <version>4.5</version>
        </dependency>
        <dependency>
            <groupId>org.apache.httpcomponents</groupId>
            <artifactId>httpcore</artifactId>
            <version>${r"${httpcomponents.version}"}</version>
        </dependency>

        <!-- json -->
        <!-- jackson -->
        <dependency>
            <groupId>org.codehaus.jackson</groupId>
            <artifactId>jackson-mapper-asl</artifactId>
            <version>${r"${jackson.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.codehaus.jackson</groupId>
            <artifactId>jackson-core-asl</artifactId>
            <version>${r"${jackson.version}"}</version>
        </dependency>
        <!-- fastjson -->
        <dependency>
            <groupId>com.alibaba</groupId>
            <artifactId>fastjson</artifactId>
            <version>${r"${fastjson.version}"}</version>
        </dependency>

        <!-- 模板引擎 -->
        <dependency>
            <groupId>org.javassist</groupId>
            <artifactId>javassist</artifactId>
            <version>${r"${javassist.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.freemarker</groupId>
            <artifactId>freemarker</artifactId>
            <version>${r"${freemarker.version}"}</version>
        </dependency>
        <dependency>
            <groupId>commons-io</groupId>
            <artifactId>commons-io</artifactId>
            <version>${r"${commons-io.version}"}</version>
        </dependency>

        <!-- 上传组件包 -->
        <dependency>
            <groupId>commons-fileupload</groupId>
            <artifactId>commons-fileupload</artifactId>
            <version>${r"${commons-fileupload.version}"}</version>
        </dependency>

        <dependency>
            <groupId>javax.servlet</groupId>
            <artifactId>servlet-api</artifactId>
            <version>${r"${servlet-api.version}"}</version>
            <scope>provided</scope>
        </dependency>

        <!-- j2ee jar -->
        <dependency>
            <groupId>javax</groupId>
            <artifactId>javaee-api</artifactId>
            <version>${r"${javaee-api.version}"}</version>
            <scope>provided</scope>
        </dependency>

        <!--单元测试-->
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>${r"${junit.version}"}</version>
            <scope>test</scope>
        </dependency>

        <!-- 用于执行sql文件 -->
        <dependency>
            <groupId>org.apache.ant</groupId>
            <artifactId>ant</artifactId>
            <version>${r"${ant.version}"}</version>
        </dependency>

        <!-- For Validatoin -->
        <dependency>
            <groupId>javax.validation</groupId>
            <artifactId>validation-api</artifactId>
            <version>${r"${validation.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.hibernate</groupId>
            <artifactId>hibernate-validator</artifactId>
            <version>${r"${hibernate.validator.version}"}</version>
        </dependency>

        <!-- 切面AOP -->
        <dependency>
            <groupId>org.aspectj</groupId>
            <artifactId>aspectjrt</artifactId>
            <version>${r"${aspect.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.aspectj</groupId>
            <artifactId>aspectjweaver</artifactId>
            <version>${r"${aspect.version}"}</version>
        </dependency>

        <!-- 日志管理 start -->
        <dependency>
            <groupId>log4j</groupId>
            <artifactId>log4j</artifactId>
            <version>${r"${log4j.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-api</artifactId>
            <version>${r"${slf4j.version}"}</version>
        </dependency>
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-log4j12</artifactId>
            <version>${r"${slf4j.version}"}</version>
        </dependency>
        <!-- 日志管理 end -->

        <!--apache工具包-->
        <dependency>
            <groupId>org.apache.commons</groupId>
            <artifactId>commons-lang3</artifactId>
            <version>${r"${commons-lang3.version}"}</version>
        </dependency>

    </dependencies>

    <build>
        <finalName>${r"${project.artifactId}"}</finalName>
        <plugins>
            <!-- Compiler 插件, 设定JDK版本 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${r"${maven-compiler-plugin.version}"}</version>
                <configuration>
                    <source>${r"${jdk.version}"}</source>
                    <target>${r"${jdk.version}"}</target>
                    <encoding>UTF-8</encoding>
                    <showWarnings>true</showWarnings>
                </configuration>
            </plugin>

            <!-- war 打包插件, 设定war包名称不带版本号 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-war-plugin</artifactId>
                <version>${r"${maven-war-plugin.version}"}</version>
                <configuration>
                    <warName>${r"${war-name.version}"}</warName>
                </configuration>
            </plugin>

            <!-- tomcat6插件 -->
            <!--https://tomcat.apache.org/maven-plugin-2.0/tomcat6-maven-plugin/run-mojo.html-->
            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat6-maven-plugin</artifactId>
                <version>${r"${tomcat6-maven-plugin.version}"}</version>
                <configuration>
                    <!--项目访问路径 这里直接使用根目录就可以了,访问地址http://localhost:8080/ -->
                    <!-- 如果这里配置了,比如test，那访问地址就需要变成：http://localhost:8080/test-->
                    <path>${r"${tomcat-path.version}"}</path>
                    <port>${r"${tomcat-port.version}"}</port>
                    <!--tomcat的url编码  达到和修改server.xml文件一样的功能-->
                    <uriEncoding>${r"${tomcat-uri-encoding.version}"}</uriEncoding>
                    <!--配置远程tomcat管理的连接路径地址(固定的一个链接)-->
                    <url>http://localhost:8080/manager/html</url>
                    <server>tomcat6</server>
                </configuration>
            </plugin>

            <!--tomcat7插件-->
            <!--https://tomcat.apache.org/maven-plugin-2.0/tomcat7-maven-plugin/run-mojo.html-->
            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat7-maven-plugin</artifactId>
                <version>${r"${tomcat7-maven-plugin.version}"}</version>
                <configuration>
                    <path>${r"${tomcat-path.version}"}</path>
                    <port>${r"${tomcat-port.version}"}</port>
                    <uriEncoding>${r"${tomcat-uri-encoding.version}"}</uriEncoding>
                    <url>http://localhost:8080/manager/text</url>
                    <server>tomcat7</server>
                    <username>admin</username>
                    <password>admin</password>
                </configuration>
            </plugin>

            <!--jetty插件-->
            <!--http://www.eclipse.org/jetty/documentation/9.0.0.M3/jetty-maven-plugin.html-->
            <plugin>
                <groupId>org.mortbay.jetty</groupId>
                <artifactId>jetty-maven-plugin</artifactId>
                <version>${r"${jetty-plugin.version}"}</version>
                <configuration>
                    <stopKey>foo</stopKey>
                    <stopPort>9999</stopPort>
                    <connectors>
                        <connector implementation="org.eclipse.jetty.server.nio.SelectChannelConnector">
                            <port>${r"${jetty-port.version}"}</port>
                        </connector>
                    </connectors>
                    <webApp>
                        <!--访问地址：http://localhost:8080/index.jsp-->
                        <!--如果不带index.jsp会直接报404，这个一直没找到原因-->
                        <contextPath>${r"${jetty-path.version}"}</contextPath>
                    </webApp>
                    <!--scanIntervalSeconds 可选[秒]。在很短的时间间隔内在扫描web应用检查是否有改变，如果发觉有任何改变则自动热部署。默认为0，表示禁用热部署检查。任何一个大于0的数字都将表示启用。-->
                    <scanIntervalSeconds>10</scanIntervalSeconds>
                </configuration>
            </plugin>

            <!-- resource插件 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-resources-plugin</artifactId>
                <version>${r"${maven-resources-plugin.version}"}</version>
            </plugin>

            <!-- source插件 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-source-plugin</artifactId>
                <version>${r"${maven-source-plugin.version}"}</version>
            </plugin>

            <!-- install插件 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-install-plugin</artifactId>
                <version>${r"${maven-install-plugin.version}"}</version>
            </plugin>

            <!-- clean插件 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-clean-plugin</artifactId>
                <version>${r"${maven-clean-plugin.version}"}</version>
            </plugin>

            <!-- ant插件 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-antrun-plugin</artifactId>
                <version>${r"${maven-antrun-plugin.version}"}</version>
            </plugin>

            <!-- dependency插件 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-dependency-plugin</artifactId>
                <version>${r"${maven-dependency-plugin.version}"}</version>
            </plugin>
        </plugins>
    </build>

</project>