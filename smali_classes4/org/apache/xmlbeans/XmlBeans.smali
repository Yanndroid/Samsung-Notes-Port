.class public final Lorg/apache/xmlbeans/XmlBeans;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HOLDER_CLASS_NAME:Ljava/lang/String; = "TypeSystemHolder"

.field public static NO_TYPE:Lorg/apache/xmlbeans/SchemaType; = null

.field private static final TYPE_SYSTEM_FIELD:Ljava/lang/String; = "typeSystem"

.field private static XMLBEANS_TITLE:Ljava/lang/String; = "org.apache.xmlbeans"

.field private static XMLBEANS_VENDOR:Ljava/lang/String; = "Apache Software Foundation"

.field private static XMLBEANS_VERSION:Ljava/lang/String; = "2.6.0"

.field private static final _compilationMethod:Ljava/lang/reflect/Method;

.field private static final _getBuiltinSchemaTypeSystemMethod:Ljava/lang/reflect/Method;

.field private static final _getContextTypeLoaderMethod:Ljava/lang/reflect/Method;

.field private static final _getNoTypeMethod:Ljava/lang/reflect/Method;

.field private static final _nodeToCursorMethod:Ljava/lang/reflect/Method;

.field private static final _nodeToXmlObjectMethod:Ljava/lang/reflect/Method;

.field private static final _nodeToXmlStreamMethod:Ljava/lang/reflect/Method;

.field private static final _pathResourceLoaderConstructor:Ljava/lang/reflect/Constructor;

.field private static final _streamToNodeMethod:Ljava/lang/reflect/Method;

.field private static final _threadLocalLoaderQNameCache:Ljava/lang/ThreadLocal;

.field private static final _typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

.field public static synthetic array$Ljava$io$File:Ljava/lang/Class;

.field public static synthetic array$Lorg$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

.field public static synthetic array$Lorg$apache$xmlbeans$XmlObject:Ljava/lang/Class;

.field public static synthetic class$java$lang$ClassLoader:Ljava/lang/Class;

.field public static synthetic class$java$lang$String:Ljava/lang/Class;

.field public static synthetic class$javax$xml$stream$XMLStreamReader:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$BindingConfig:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$Filer:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$ResourceLoader:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$XmlObject:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

.field public static synthetic class$org$w3c$dom$Node:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.XmlBeans"

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_TITLE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VERSION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VENDOR:Ljava/lang/String;

    :cond_1
    new-instance v0, Lorg/apache/xmlbeans/XmlBeans$1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlBeans$1;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_threadLocalLoaderQNameCache:Ljava/lang/ThreadLocal;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildGetContextTypeLoaderMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getContextTypeLoaderMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildGetBuiltinSchemaTypeSystemMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getBuiltinSchemaTypeSystemMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildGetNoTypeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getNoTypeMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildTypeLoaderBuilderMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildCompilationMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_compilationMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeToCursorMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToCursorMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeToXmlObjectMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlObjectMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeToXmlStreamMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlStreamMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildStreamToNodeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_streamToNodeMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->buildPathResourceLoaderConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->_pathResourceLoaderConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getNoType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/XmlBeans;->NO_TYPE:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final buildCompilationMethod()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.xmlbeans.SchemaTypeSystem"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeSystem:Ljava/lang/Class;

    :cond_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "[Lorg.apache.xmlbeans.XmlObject;"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    :cond_2
    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$BindingConfig:Ljava/lang/Class;

    if-nez v2, :cond_3

    const-string v2, "org.apache.xmlbeans.BindingConfig"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$BindingConfig:Ljava/lang/Class;

    :cond_3
    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    if-nez v2, :cond_4

    const-string v2, "org.apache.xmlbeans.SchemaTypeLoader"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    :cond_4
    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$Filer:Ljava/lang/Class;

    if-nez v2, :cond_5

    const-string v2, "org.apache.xmlbeans.Filer"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$Filer:Ljava/lang/Class;

    :cond_5
    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "org.apache.xmlbeans.XmlOptions"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlOptions:Ljava/lang/Class;

    :cond_6
    aput-object v2, v0, v1

    const-string v1, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemCompiler"

    const-string v2, "compile"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.XmlBeans"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot load constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ": verify that xbean.jar is on the classpath"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static final buildGetBuiltinSchemaTypeSystemMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem"

    const-string v1, "get"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static buildGetContextTypeLoaderMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl"

    const-string v1, "getContextTypeLoader"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildGetNoTypeMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem"

    const-string v1, "getNoType"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.XmlBeans"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlBeans:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Cannot load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ": verify that xbean.jar is on the classpath"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static final buildNoArgMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static final buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$w3c$dom$Node:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.w3c.dom.Node"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$w3c$dom$Node:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static final buildNodeToCursorMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v1, "nodeToCursor"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildNodeToXmlObjectMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v1, "nodeToXmlObject"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildNodeToXmlStreamMethod()Ljava/lang/reflect/Method;
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.store.Locale"

    const-string v1, "nodeToXmlStream"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->buildNodeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildPathResourceLoaderConstructor()Ljava/lang/reflect/Constructor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->array$Ljava$io$File:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "[Ljava.io.File;"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->array$Ljava$io$File:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.apache.xmlbeans.impl.schema.PathResourceLoader"

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private static final buildStreamToNodeMethod()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$javax$xml$stream$XMLStreamReader:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.poi.javax.xml.stream.XMLStreamReader"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$javax$xml$stream$XMLStreamReader:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "org.apache.xmlbeans.impl.store.Locale"

    const-string v2, "streamToNode"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final buildTypeLoaderBuilderMethod()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "[Lorg.apache.xmlbeans.SchemaTypeLoader;"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->array$Lorg$apache$xmlbeans$SchemaTypeLoader:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$ResourceLoader:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.xmlbeans.ResourceLoader"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$ResourceLoader:Ljava/lang/Class;

    :cond_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$ClassLoader:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "java.lang.ClassLoader"

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/XmlBeans;->class$java$lang$ClassLoader:Ljava/lang/Class;

    :cond_2
    aput-object v2, v0, v1

    const-string v1, "org.apache.xmlbeans.impl.schema.SchemaTypeLoaderImpl"

    const-string v2, "build"

    invoke-static {v1, v2, v0}, Lorg/apache/xmlbeans/XmlBeans;->buildMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static compilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlBeans;->compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compileQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlBeans;->compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/xmlbeans/SchemaTypeLoader;->compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compileXmlBeans(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_compilationMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p4

    :goto_0
    aput-object p4, v2, p0

    const/4 p0, 0x5

    aput-object p5, v2, p0

    const/4 p0, 0x6

    aput-object p6, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlBeans;->wrappedException(Ljava/lang/Throwable;)Lorg/apache/xmlbeans/XmlException;

    move-result-object p0

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No access to SchemaTypeLoaderImpl.forSchemaXml(): verify that version of xbean.jar is correct"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compileXsd(Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlBeans;->compileXmlBeans(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0

    return-object p0
.end method

.method public static compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/xmlbeans/XmlBeans;->compileXmlBeans(Ljava/lang/String;Lorg/apache/xmlbeans/SchemaTypeSystem;[Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/BindingConfig;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/Filer;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0

    return-object p0
.end method

.method public static getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getBuiltinSchemaTypeSystemMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No access to BuiltinSchemaTypeSystem.get(): verify that version of xbean.jar is correct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getContextTypeLoaderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No access to SchemaTypeLoaderImpl.getContextTypeLoader(): verify that version of xbean.jar is correct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static getNoType()Lorg/apache/xmlbeans/SchemaType;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_getNoTypeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No access to SchemaTypeLoaderImpl.getContextTypeLoader(): verify that version of xbean.jar is correct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getQName(Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getQNameCache()Lorg/apache/xmlbeans/QNameCache;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, p0}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static getQName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getQNameCache()Lorg/apache/xmlbeans/QNameCache;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/xmlbeans/QNameCache;->getName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public static getQNameCache()Lorg/apache/xmlbeans/QNameCache;
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_threadLocalLoaderQNameCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/QNameCache;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/QNameCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/QNameCache;-><init>(I)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static final getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVendor()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VENDOR:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->XMLBEANS_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public static loadXsd([Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/XmlBeans;->loadXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    return-object p0
.end method

.method public static loadXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 7

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_compilationMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object p0, v1, v5

    const/4 p0, 0x3

    aput-object v3, v1, p0

    const/4 p0, 0x4

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v6

    aput-object v6, v1, p0

    const/4 p0, 0x5

    aput-object v3, v1, p0

    const/4 p0, 0x6

    aput-object p1, v1, p0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeSystem;

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    new-array p1, v5, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    aput-object p0, p1, v2

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0

    aput-object p0, p1, v4

    invoke-static {p1}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderUnion([Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlBeans;->wrappedException(Ljava/lang/Throwable;)Lorg/apache/xmlbeans/XmlException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No access to SchemaTypeLoaderImpl.forSchemaXml(): verify that version of xbean.jar is correct"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static nodeToCursor(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToCursorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlCursor;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to nodeToCursor verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static nodeToXmlObject(Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlObjectMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to nodeToXmlObject verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static nodeToXmlStreamReader(Lorg/w3c/dom/Node;)Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_nodeToXmlStreamMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/javax/xml/stream/XMLStreamReader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to nodeToXmlStreamReader verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static resourceLoaderForPath([Ljava/io/File;)Lorg/apache/xmlbeans/ResourceLoader;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_pathResourceLoaderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/ResourceLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static streamToNode(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;)Lorg/w3c/dom/Node;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_streamToNodeMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to streamToNode verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeForClass(Ljava/lang/Class;)Lorg/apache/xmlbeans/SchemaType;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.XmlObject"

    invoke-static {v1}, Lorg/apache/xmlbeans/XmlBeans;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/XmlBeans;->class$org$apache$xmlbeans$XmlObject:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static typeLoaderForClassLoader(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeLoaderForResource(Lorg/apache/xmlbeans/ResourceLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 4

    :try_start_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object v3, v1, p0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeLoaderUnion([Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 4

    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/XmlBeans;->_typeLoaderBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x0

    aput-object p0, v3, v2

    const/4 v1, 0x2

    aput-object p0, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No access to SchemaTypeLoaderImpl: verify that version of xbean.jar is correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 6

    const-string v0, ". Please verify the version of xbean.jar is correct."

    const-string v1, "TypeSystemHolder"

    const-string v2, "."

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v3, "typeSystem"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/SchemaTypeSystem;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SchemaTypeSystem is null for field typeSystem on class with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Field typeSystem on class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "is not accessible. Please verify the version of xbean.jar is correct."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Cannot find field typeSystem on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Cannot load SchemaTypeSystem. Unable to load class with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ". Make sure the generated binary files are on the classpath."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/XmlBeans;->causedException(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static wrappedException(Ljava/lang/Throwable;)Lorg/apache/xmlbeans/XmlException;
    .locals 2

    instance-of v0, p0, Lorg/apache/xmlbeans/XmlException;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/xmlbeans/XmlException;

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/XmlException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/XmlException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
