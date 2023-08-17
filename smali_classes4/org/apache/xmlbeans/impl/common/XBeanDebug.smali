.class public Lorg/apache/xmlbeans/impl/common/XBeanDebug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TRACE_SCHEMA_LOADING:I = 0x1

.field private static _enabled:I = 0x0

.field public static _err:Ljava/io/PrintStream; = null

.field private static _indent:I = 0x0

.field private static _indentspace:Ljava/lang/String; = null

.field public static synthetic class$org$apache$xmlbeans$impl$common$XBeanDebug:Ljava/lang/Class; = null

.field public static final defaultProp:Ljava/lang/String; = ""

.field public static final traceProp:Ljava/lang/String; = "org.apache.xmlbeans.impl.debug"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->initializeBitsFromProperty()I

    move-result v0

    sput v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_enabled:I

    const/4 v0, 0x0

    sput v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    const-string v0, "                                                                                "

    sput-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indentspace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
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

.method public static disable(I)V
    .locals 1

    sget v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_enabled:I

    not-int p0, p0

    and-int/2addr p0, v0

    sput p0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_enabled:I

    return-void
.end method

.method public static enable(I)V
    .locals 1

    sget v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_enabled:I

    or-int/2addr p0, v0

    sput p0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_enabled:I

    return-void
.end method

.method private static initializeBitsFromProperty()I
    .locals 2

    const-string v0, "org.apache.xmlbeans.impl.debug"

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRACE_SCHEMA_LOADING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->log(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    return-object p0
.end method

.method private static declared-synchronized log(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const-class v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_err:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "xmlbeandebug"

    const-string v2, ".log"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_err:Ljava/io/PrintStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Diagnostic XML Bean debug log file created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_err:Ljava/io/PrintStream;

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_err:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_err:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static logException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->log(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    return-object p0
.end method

.method public static logStackTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->log(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    return-object p0
.end method

.method public static test(I)Z
    .locals 1

    sget v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_enabled:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static trace(ILjava/lang/String;I)V
    .locals 3

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->test(I)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->class$org$apache$xmlbeans$impl$common$XBeanDebug:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "org.apache.xmlbeans.impl.common.XBeanDebug"

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->class$org$apache$xmlbeans$impl$common$XBeanDebug:Ljava/lang/Class;

    :cond_0
    monitor-enter p0

    if-gez p2, :cond_1

    :try_start_0
    sget v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    add-int/2addr v0, p2

    sput v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    :cond_1
    sget v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    if-gez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indentspace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    sget-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indentspace:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indentspace:Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-lez p2, :cond_4

    sget p1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    add-int/2addr p1, p2

    sput p1, Lorg/apache/xmlbeans/impl/common/XBeanDebug;->_indent:I

    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
