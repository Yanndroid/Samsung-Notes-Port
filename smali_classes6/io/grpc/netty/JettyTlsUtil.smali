.class final Lio/grpc/netty/JettyTlsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder;
    }
.end annotation


# static fields
.field private static jettyAlpnUnavailabilityCause:Ljava/lang/Throwable;

.field private static jettyNpnUnavailabilityCause:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJava9AlpnUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lio/grpc/netty/JettyTlsUtil$Java9AlpnUnavailabilityCauseHolder;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static declared-synchronized getJettyAlpnUnavailabilityCause()Ljava/lang/Throwable;
    .locals 2

    const-class v0, Lio/grpc/netty/JettyTlsUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/grpc/netty/JettyTlsUtil;->jettyAlpnUnavailabilityCause:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyAlpnConfigured()Z

    :cond_0
    sget-object v1, Lio/grpc/netty/JettyTlsUtil;->jettyAlpnUnavailabilityCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getJettyNpnUnavailabilityCause()Ljava/lang/Throwable;
    .locals 2

    const-class v0, Lio/grpc/netty/JettyTlsUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/grpc/netty/JettyTlsUtil;->jettyNpnUnavailabilityCause:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->isJettyNpnConfigured()Z

    :cond_0
    sget-object v1, Lio/grpc/netty/JettyTlsUtil;->jettyNpnUnavailabilityCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isJava9AlpnAvailable()Z
    .locals 1

    invoke-static {}, Lio/grpc/netty/JettyTlsUtil;->getJava9AlpnUnavailabilityCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized isJettyAlpnConfigured()Z
    .locals 4

    const-class v0, Lio/grpc/netty/JettyTlsUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sput-object v1, Lio/grpc/netty/JettyTlsUtil;->jettyAlpnUnavailabilityCause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isJettyNpnConfigured()Z
    .locals 4

    const-class v0, Lio/grpc/netty/JettyTlsUtil;

    monitor-enter v0

    :try_start_0
    const-string v1, "org.eclipse.jetty.npn.NextProtoNego"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    sput-object v1, Lio/grpc/netty/JettyTlsUtil;->jettyNpnUnavailabilityCause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0

    throw v1
.end method
