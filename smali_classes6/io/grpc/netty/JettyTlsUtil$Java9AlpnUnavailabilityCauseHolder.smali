.class Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/JettyTlsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Java9AlpnUnavailabilityCauseHolder"
.end annotation


# static fields
.field public static final cause:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder;->checkAlpnAvailability()Ljava/lang/Throwable;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAlpnAvailability()Ljava/lang/Throwable;
    .locals 4

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    new-instance v2, Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder$1;

    invoke-direct {v2}, Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    return-object v0
.end method
