.class abstract Lio/netty/handler/ssl/JettyAlpnSslEngine;
.super Lio/netty/handler/ssl/JdkSslEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;,
        Lio/netty/handler/ssl/JettyAlpnSslEngine$ClientEngine;
    }
.end annotation


# static fields
.field private static final available:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/netty/handler/ssl/JettyAlpnSslEngine;->initAvailable()Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/JettyAlpnSslEngine;->available:Z

    return-void
.end method

.method private constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/JdkSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JettyAlpnSslEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/JettyAlpnSslEngine;-><init>(Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method private static initAvailable()Z
    .locals 3

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string v0, "sun.security.ssl.ALPNExtension"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-boolean v0, Lio/netty/handler/ssl/JettyAlpnSslEngine;->available:Z

    return v0
.end method

.method public static newClientEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/JettyAlpnSslEngine;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/JettyAlpnSslEngine$ClientEngine;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/ssl/JettyAlpnSslEngine$ClientEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    return-object v0
.end method

.method public static newServerEngine(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)Lio/netty/handler/ssl/JettyAlpnSslEngine;
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/ssl/JettyAlpnSslEngine$ServerEngine;-><init>(Ljavax/net/ssl/SSLEngine;Lio/netty/handler/ssl/JdkApplicationProtocolNegotiator;)V

    return-object v0
.end method
