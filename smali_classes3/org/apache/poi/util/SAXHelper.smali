.class public final Lorg/apache/poi/util/SAXHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

.field private static lastLog:J

.field private static final logger:Lorg/apache/poi/util/POILogger;

.field private static final saxFactory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "Failed to create SAXParserFactory"

    const-class v1, Lorg/apache/poi/util/SAXHelper;

    invoke-static {v1}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v1, Lorg/apache/poi/util/SAXHelper$1;

    invoke-direct {v1}, Lorg/apache/poi/util/SAXHelper$1;-><init>()V

    sput-object v1, Lorg/apache/poi/util/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/util/SAXHelper;->saxFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v5, v4}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    invoke-virtual {v5, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v6, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    throw v5

    :catch_1
    move-exception v5

    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v6, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v5

    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v5, v1, v3

    invoke-virtual {v6, v2, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    throw v5
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized newXMLReader()Lorg/xml/sax/XMLReader;
    .locals 3

    const-class v0, Lorg/apache/poi/util/SAXHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/util/SAXHelper;->saxFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/util/SAXHelper;->IGNORING_ENTITY_RESOLVER:Lorg/xml/sax/EntityResolver;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-static {v1, v2}, Lorg/apache/poi/util/SAXHelper;->trySetSAXFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/poi/util/SAXHelper;->trySetXercesSecurityManager(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static trySetSAXFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {p0, p1, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v5, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Cannot set SAX feature because outdated XML parser in classpath"

    aput-object v6, v2, v1

    aput-object p1, v2, v4

    aput-object p0, v2, v0

    invoke-virtual {v5, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    sget-object v5, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "SAX Feature unsupported"

    aput-object v6, v2, v1

    aput-object p1, v2, v4

    aput-object p0, v2, v0

    invoke-virtual {v5, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static trySetXercesSecurityManager(Lorg/xml/sax/XMLReader;)V
    .locals 13

    const-string v0, "com.sun.org.apache.xerces.internal.util.SecurityManager"

    const-string v1, "org.apache.xerces.util.SecurityManager"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

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

    invoke-interface {p0, v6, v4}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lorg/apache/poi/util/SAXHelper;->lastLog:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    sget-object v6, Lorg/apache/poi/util/SAXHelper;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v7, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "SAX Security Manager could not be setup [log suppressed for 5 minutes]"

    aput-object v8, v3, v1

    aput-object v4, v3, v5

    invoke-virtual {v6, v7, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lorg/apache/poi/util/SAXHelper;->lastLog:J

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
