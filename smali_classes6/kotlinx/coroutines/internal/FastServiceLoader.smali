.class public final Lkotlinx/coroutines/internal/FastServiceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0082\u0008J1\u0010\n\u001a\u0002H\u000b\"\u0004\u0008\u0000\u0010\u000b2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0008H\u0002\u00a2\u0006\u0002\u0010\u0010J*\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0012\"\u0004\u0008\u0000\u0010\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0013\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0012H\u0000\u00a2\u0006\u0002\u0008\u0014J/\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0012\"\u0004\u0008\u0000\u0010\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u0016J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J,\u0010\u001d\u001a\u0002H\u001e\"\u0004\u0008\u0000\u0010\u001e*\u00020\u001f2\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u0002H\u001e0!H\u0082\u0008\u00a2\u0006\u0002\u0010\"R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/FastServiceLoader;",
        "",
        "()V",
        "PREFIX",
        "",
        "createInstanceOf",
        "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
        "baseClass",
        "Ljava/lang/Class;",
        "serviceClass",
        "getProviderInstance",
        "S",
        "name",
        "loader",
        "Ljava/lang/ClassLoader;",
        "service",
        "(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;",
        "load",
        "",
        "loadMainDispatcherFactory",
        "loadMainDispatcherFactory$kotlinx_coroutines_core",
        "loadProviders",
        "loadProviders$kotlinx_coroutines_core",
        "parse",
        "url",
        "Ljava/net/URL;",
        "parseFile",
        "r",
        "Ljava/io/BufferedReader;",
        "use",
        "R",
        "Ljava/util/jar/JarFile;",
        "block",
        "Lkotlin/Function1;",
        "(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFIX:Ljava/lang/String; = "META-INF/services/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/FastServiceLoader;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createInstanceOf(Ljava/lang/Class;Ljava/lang/String;)Lkotlinx/coroutines/internal/MainDispatcherFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p2, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/MainDispatcherFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getProviderInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected service of class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", but found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/FastServiceLoader;->loadProviders$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {p1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final parse(Ljava/net/URL;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "jar:file:"

    invoke-static {v0, p1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x21

    invoke-static {p1, v1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "!/"

    invoke-static {v0, v1, v4, v3, v4}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v0, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/internal/FastServiceLoader;->parseFile(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_7
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_8
    sget-object p1, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/internal/FastServiceLoader;->parseFile(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_6
    move-exception p1

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final parseFile(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x2

    const-string v3, "#"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_4

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v5

    :goto_2
    if-nez v4, :cond_2

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    move v2, v5

    :cond_6
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string p1, "Illegal service provider class name: "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final use(Ljava/util/jar/JarFile;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/jar/JarFile;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/jar/JarFile;",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    :try_start_1
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p2

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p2

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    :try_start_3
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1

    :catchall_3
    move-exception p1

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final loadMainDispatcherFactory$kotlinx_coroutines_core()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/internal/MainDispatcherFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-static {}, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->getANDROID_DETECTED()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/FastServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "kotlinx.coroutines.android.AndroidDispatcherFactory"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v2, "kotlinx.coroutines.test.internal.TestMainDispatcherFactory"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v2

    :catch_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/FastServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final loadProviders$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/services/"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "list(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    sget-object v3, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/FastServiceLoader;->parse(Ljava/net/URL;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-direct {v3, v2, p2, p1}, Lkotlinx/coroutines/internal/FastServiceLoader;->getProviderInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No providers were loaded with FastServiceLoader"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
