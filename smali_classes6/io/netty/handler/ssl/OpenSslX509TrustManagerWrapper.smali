.class final Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$UnsafeTrustManagerWrapper;,
        Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;
    }
.end annotation

.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "Usage guarded by java version check"
.end annotation


# static fields
.field private static final LOGGER:Lio/netty/util/internal/logging/InternalLogger;

.field private static final WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-class v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v1, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$1;

    invoke-direct {v1}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$1;-><init>()V

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->getUnsafeUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Unable to access wrapped TrustManager"

    const/4 v4, 0x0

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$2;

    invoke-direct {v6}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$2;-><init>()V

    aput-object v6, v2, v5

    invoke-virtual {v0, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    :goto_0
    if-eqz v4, :cond_0

    sget-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    goto :goto_1

    :cond_0
    new-instance v2, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;

    invoke-direct {v2, v0}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$3;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    sget-object v2, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->LOGGER:Lio/netty/util/internal/logging/InternalLogger;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    check-cast v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v0, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sput-object v1, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljavax/net/ssl/SSLContext;
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->newSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private static newSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    const-string v0, "TLS"

    const-string v1, "SunJSSE"

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public static wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper;->WRAPPER:Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;

    invoke-interface {v0, p0}, Lio/netty/handler/ssl/OpenSslX509TrustManagerWrapper$TrustManagerWrapper;->wrapIfNeeded(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method
