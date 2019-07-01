# springboot-shiro
## 插件总结
blueimp 图片&视频Gallery
c3 基于D3的可服用图形库
chosen 多功能选择框
clipboard 剪切板
fancybox 图片弹出框
flot 图形绘制
gritter growl-like通知
jasny jquery补丁样式
ladda   带有内嵌loading的按钮
masonry 图库自动布局
morris 图表库
nestable 嵌套样式
peity mini图表控件
rickshaw 动态实时图形
slick 幻灯片
sparkline 动态实时图形
summernote 网页编辑器
switchery 开关
tinycon 控制favicon
toastr 提示框
ztree
## 知识点总结
@Entity 表明该类 (UserEntity) 为一个实体类，它默认对应数据库中的表名是user_entity。这里也可以写成
@Entity(name = "xwj_user")
或者
@Entity
@Table(name = "xwj_user", schema = "test")
查看@Entity注解，发现其只有一个属性name，表示其所对应的数据库中的表名
@Table 当实体类与其映射的数据库表名不同名时需要使用@Table注解说明，该标注与 @Entity 注解并列使用，
置于实体类声明语句之前，可写于单独语句行，也可与声明语句同行。 
@Table注解的常用选项是 name，用于指明数据库的表名 
@Table注解还有两个选项 catalog 和 schema 用于设置表所属的数据库目录或模式，通常为数据库名
@Column注释定义了将成员属性映射到关系表中的哪一列和该列的结构信息，属性如下：
　　1）name：映射的列名。如：映射tbl_user表的name列，可以在name属性的上面或getName方法上面加入；
　　2）unique：是否唯一；
　　3）nullable：是否允许为空；
　　4）length：对于字符型列，length属性指定列的最大字符长度；
　　5）insertable：是否允许插入；
　　6）updatetable：是否允许更新；
　　7）columnDefinition：定义建表时创建此列的DDL；
　　8）secondaryTable：从表名。如果此列不建在主表上（默认是主表），该属性定义该列所在从表的名字
@Id注释指定表的主键，它可以有多种生成方式：
　　1）TABLE：容器指定用底层的数据表确保唯一；
　　2）SEQUENCE：使用数据库德SEQUENCE列莱保证唯一（Oracle数据库通过序列来生成唯一ID）；
　　3）IDENTITY：使用数据库的IDENTITY列莱保证唯一；
　　4）AUTO：由容器挑选一个合适的方式来保证唯一；
　　5）NONE：容器不负责主键的生成，由程序来完成。
#### 项目介绍

