.class public final Lio/netty/handler/codec/compression/Brotli;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CNFE:Ljava/lang/ClassNotFoundException;

.field private static cause:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/netty/handler/codec/compression/Brotli;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/compression/Brotli;->logger:Lio/netty/util/internal/logging/InternalLogger;

    :try_start_0
    const-string v1, "com.aayushatharva.brotli4j.Brotli4jLoader"

    const/4 v2, 0x0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lio/netty/handler/codec/compression/Brotli;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "brotli4j not in the classpath; Brotli support will be unavailable."

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aayushatharva/brotli4j/Brotli4jLoader;->getUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/Brotli;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/compression/Brotli;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to load brotli4j; Brotli support will be unavailable."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cause()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static ensureAvailability()V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aayushatharva/brotli4j/Brotli4jLoader;->ensureAvailability()V

    return-void

    :cond_0
    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lio/netty/handler/codec/compression/Brotli;->CNFE:Ljava/lang/ClassNotFoundException;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aayushatharva/brotli4j/Brotli4jLoader;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
