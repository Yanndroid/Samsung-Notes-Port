.class public Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static synthetic class$java$lang$Class:Ljava/lang/Class;

.field public static synthetic class$schemaorg_apache_xmlbeans$system$sXMLCONFIG$TypeSystemHolder:Ljava/lang/Class;

.field public static final typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->loadTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    sput-object v0, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/SchemaTypeSystem;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method private static final loadTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 6

    :try_start_0
    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaTypeSystemImpl"

    sget-object v1, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sXMLCONFIG$TypeSystemHolder:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "schemaorg_apache_xmlbeans.system.sXMLCONFIG.TypeSystemHolder"

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v2}, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sXMLCONFIG$TypeSystemHolder:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v4, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.lang.Class"

    invoke-static {v4}, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$java$lang$Class:Ljava/lang/Class;

    :cond_1
    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sXMLCONFIG$TypeSystemHolder:Ljava/lang/Class;

    if-nez v3, :cond_2

    invoke-static {v2}, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lschemaorg_apache_xmlbeans/system/sXMLCONFIG/TypeSystemHolder;->class$schemaorg_apache_xmlbeans$system$sXMLCONFIG$TypeSystemHolder:Ljava/lang/Class;

    :cond_2
    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaTypeSystem;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate SchemaTypeSystemImpl ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "): is the version of xbean.jar correct?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot load org.apache.xmlbeans.impl.SchemaTypeSystemImpl: make sure xbean.jar is on the classpath."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
