.class public abstract Lorg/apache/xmlbeans/impl/store/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;,
        Lorg/apache/xmlbeans/impl/store/Path$XbeanPathEngine;,
        Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;,
        Lorg/apache/xmlbeans/impl/store/Path$PathEngine;
    }
.end annotation


# static fields
.field public static final PATH_DELEGATE_INTERFACE:Ljava/lang/String; = "PATH_DELEGATE_INTERFACE"

.field private static final USE_DELEGATE:I = 0x4

.field private static final USE_XBEAN:I = 0x1

.field private static final USE_XDK:I = 0x10

.field private static final USE_XQRL:I = 0x2

.field private static final USE_XQRL2002:I = 0x8

.field private static _delIntfName:Ljava/lang/String; = null

.field public static _forceXqrl2002ForXpathXQuery:Ljava/lang/String; = "use xqrl-2002 for xpath"

.field public static _useDelegateForXpath:Ljava/lang/String; = "use delegate for xpath"

.field public static _useXbeanForXpath:Ljava/lang/String; = "use xbean for xpath"

.field public static _useXdkForXpath:Ljava/lang/String; = "use xdk for xpath"

.field public static _useXqrlForXpath:Ljava/lang/String; = "use xqrl for xpath"

.field private static _xbeanPathCache:Ljava/util/Map;

.field private static _xdkAvailable:Z

.field private static _xdkCompilePath:Ljava/lang/reflect/Method;

.field private static _xdkPathCache:Ljava/util/Map;

.field private static _xqrl2002Available:Z

.field private static _xqrl2002CompilePath:Ljava/lang/reflect/Method;

.field private static _xqrl2002PathCache:Ljava/util/Map;

.field private static _xqrlAvailable:Z

.field private static _xqrlCompilePath:Ljava/lang/reflect/Method;

.field private static _xqrlPathCache:Ljava/util/Map;

.field public static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field public static synthetic class$java$lang$String:Ljava/lang/Class;

.field public static synthetic class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;


# instance fields
.field public final _pathKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xbeanPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002PathCache:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Path"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->class$org$apache$xmlbeans$impl$store$Path:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "META-INF/services/org.apache.xmlbeans.impl.store.PathDelegate.SelectPathInterface"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    return-object v0
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

.method public static declared-synchronized compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static createXdkCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 10

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkCompilePath:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "org.apache.xmlbeans.impl.store.OXQXBXqrlImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "compilePath"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "java.lang.String"

    if-nez v8, :cond_1

    :try_start_1
    invoke-static {v9}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    aput-object v8, v7, v5

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    if-nez v8, :cond_2

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    aput-object v8, v7, v4

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Boolean"

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_3
    aput-object v8, v7, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkCompilePath:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sput-boolean v5, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    sput-boolean v5, Lorg/apache/xmlbeans/impl/store/Path;->_xdkAvailable:Z

    return-object v1

    :cond_4
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object p1, v0, v4

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object p0, v0, v2

    :try_start_2
    sget-object p0, Lorg/apache/xmlbeans/impl/store/Path;->_xdkCompilePath:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createXqrl2002CompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 10

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002CompilePath:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "org.apache.xmlbeans.impl.store.Xqrl2002Impl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "compilePath"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "java.lang.String"

    if-nez v8, :cond_1

    :try_start_1
    invoke-static {v9}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    aput-object v8, v7, v5

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    if-nez v8, :cond_2

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    aput-object v8, v7, v4

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Boolean"

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_3
    aput-object v8, v7, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002CompilePath:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sput-boolean v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    sput-boolean v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002Available:Z

    return-object v1

    :cond_4
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object p1, v0, v4

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object p0, v0, v2

    :try_start_2
    sget-object p0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002CompilePath:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createXqrlCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 10

    sget-boolean v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlCompilePath:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "org.apache.xmlbeans.impl.store.XqrlImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "compilePath"

    new-array v7, v3, [Ljava/lang/Class;

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "java.lang.String"

    if-nez v8, :cond_1

    :try_start_1
    invoke-static {v9}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    aput-object v8, v7, v5

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    if-nez v8, :cond_2

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    aput-object v8, v7, v4

    sget-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v8, :cond_3

    const-string v8, "java.lang.Boolean"

    invoke-static {v8}, Lorg/apache/xmlbeans/impl/store/Path;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/xmlbeans/impl/store/Path;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_3
    aput-object v8, v7, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlCompilePath:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sput-boolean v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    sput-boolean v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlAvailable:Z

    return-object v1

    :cond_4
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    aput-object p1, v0, v4

    new-instance p0, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object p0, v0, v2

    :try_start_2
    sget-object p0, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlCompilePath:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static declared-synchronized getCompiledPath(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 7

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move-object v3, v2

    :goto_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xbeanPathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_2

    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_2

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlPathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    :cond_2
    if-nez v5, :cond_3

    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_3

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xdkPathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    :cond_3
    if-nez v5, :cond_4

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_4

    sget-object v5, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002PathCache:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xmlbeans/impl/store/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v2, :cond_6

    monitor-exit v0

    return-object v2

    :cond_6
    if-eqz v4, :cond_7

    :try_start_1
    invoke-static {p0, p2, v3}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXbean(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_8

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_8

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXqrl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_9

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXdk(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    invoke-static {p0, p2, v3, p3}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    and-int/lit8 p3, p1, 0x8

    if-eqz p3, :cond_b

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPathXqrl2002(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object v2

    :cond_b
    if-nez v2, :cond_11

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v4, :cond_c

    const-string p3, " Trying XBeans path engine..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit8 p3, p1, 0x2

    if-eqz p3, :cond_d

    const-string p3, " Trying XQRL..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit8 p3, p1, 0x10

    if-eqz p3, :cond_e

    const-string p3, " Trying XDK..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    if-eqz v1, :cond_f

    const-string p3, " Trying delegated path engine..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_10

    const-string p1, " Trying XQRL2002..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " FAILED on "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v0

    throw p0

    :cond_11
    monitor-exit v0

    return-object v2
.end method

.method public static getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    invoke-static {p1}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useDelegateForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useXqrlForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useXdkForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_useXbeanForXpath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/xmlbeans/impl/store/Path;->_forceXqrl2002ForXpathXQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    const/16 v0, 0x17

    :goto_0
    const-string v1, "PATH_DELEGATE_INTERFACE"

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v1, Lorg/apache/xmlbeans/impl/store/Path;->_delIntfName:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/store/Path;->getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Path;->getCompiledPath(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getCompiledPathDelegate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/common/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/common/XPath;
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/common/XPath$XPathCompileException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :goto_0
    :try_start_2
    const-string v1, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    const-string v2, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path$DelegatePathImpl;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXbean(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 2

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Path$XbeanPath;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xbeanPathCache:Ljava/util/Map;

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXdk(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->createXdkCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xdkPathCache:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXqrl(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->createXqrlCompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xqrlPathCache:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getCompiledPathXqrl2002(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;
    .locals 3

    const-class v0, Lorg/apache/xmlbeans/impl/store/Path;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/store/Path;->createXqrl2002CompiledPath(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/Path;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/store/Path;->_xqrl2002PathCache:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Path;->_pathKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    const-string v0, "XQUERY_CURRENT_NODE_VAR"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Omit the \'$\' prefix for the current node variable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "this"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract execute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Path$PathEngine;
.end method
