.class public final Lorg/apache/poi/util/DocumentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;
    }
.end annotation


# static fields
.field private static final documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

.field private static logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/poi/util/DocumentHelper;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/DocumentHelper;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/DocumentHelper;->trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V

    invoke-static {v0}, Lorg/apache/poi/util/DocumentHelper;->trySetXercesSecurityManager(Ljavax/xml/parsers/DocumentBuilderFactory;)V

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method public static addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-interface {p0, v0, p1, p2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addNamespaceDeclaration(Lorg/w3c/dom/Element;Lorg/apache/poi/javax/xml/stream/events/Namespace;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/poi/javax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/DocumentHelper;->addNamespaceDeclaration(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized createDocument()Lorg/w3c/dom/Document;
    .locals 2

    const-class v0, Lorg/apache/poi/util/DocumentHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/util/DocumentHelper;->documentBuilderSingleton:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4

    const-class v0, Lorg/apache/poi/util/DocumentHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/util/DocumentHelper;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/util/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    new-instance v2, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;-><init>(Lorg/apache/poi/util/DocumentHelper$1;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot create a DocumentBuilder"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static readDocument(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public static readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 1

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method private static trySetSAXFeature(Ljavax/xml/parsers/DocumentBuilderFactory;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p2, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "Cannot set SAX feature because outdated XML parser in classpath"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object p2, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "SAX Feature unsupported"

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-virtual {p2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static trySetXercesSecurityManager(Ljavax/xml/parsers/DocumentBuilderFactory;)V
    .locals 10

    const-string v0, "com.sun.org.apache.xerces.internal.util.SecurityManager"

    const-string v1, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "setEntityExpansionLimit"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const/16 v8, 0x1000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v6, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    sget-object v6, Lorg/apache/poi/util/DocumentHelper;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "SAX Security Manager could not be setup"

    aput-object v8, v3, v1

    aput-object v4, v3, v5

    invoke-virtual {v6, v7, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
