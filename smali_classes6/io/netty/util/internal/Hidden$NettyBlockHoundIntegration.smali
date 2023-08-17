.class public final Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lreactor/blockhound/integration/BlockHoundIntegration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/Hidden;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NettyBlockHoundIntegration"
.end annotation

.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "BlockHound is Java 8+, but this class is only loaded by it\'s SPI"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTo(Lreactor/blockhound/BlockHound$Builder;)V
    .locals 4

    const-string v0, "io.netty.channel.nio.NioEventLoop"

    const-string v1, "handleLoopException"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.channel.kqueue.KQueueEventLoop"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.channel.epoll.EpollEventLoop"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.util.HashedWheelTimer"

    const-string v1, "start"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v1, "stop"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.util.HashedWheelTimer$Worker"

    const-string v1, "waitForNextTick"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.util.concurrent.SingleThreadEventExecutor"

    const-string v1, "confirmShutdown"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v1, "io.netty.handler.ssl.SslHandler"

    const-string v2, "handshake"

    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v2, "runAllDelegatedTasks"

    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v2, "runDelegatedTasks"

    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v1, "io.netty.util.concurrent.GlobalEventExecutor"

    const-string v2, "takeTask"

    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v3, "addTask"

    invoke-virtual {p1, v1, v3}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    invoke-virtual {p1, v0, v3}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.handler.ssl.ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback"

    const-string v1, "verify"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.handler.ssl.JdkSslContext$Defaults"

    const-string v1, "init"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "sun.security.ssl.SSLEngineImpl"

    const-string v1, "unwrap"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v1, "wrap"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.resolver.dns.UnixResolverDnsServerAddressStreamProvider"

    const-string v1, "parse"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v2, "parseEtcResolverSearchDomains"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v2, "parseEtcResolverOptions"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.resolver.HostsFileEntriesProvider$ParserImpl"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    const-string v0, "io.netty.util.NetUtil$SoMaxConnAction"

    const-string v1, "run"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    new-instance v0, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;-><init>(Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;)V

    invoke-virtual {p1, v0}, Lreactor/blockhound/BlockHound$Builder;->nonBlockingThreadPredicate(Ljava/util/function/Function;)Lreactor/blockhound/BlockHound$Builder;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lreactor/blockhound/integration/BlockHoundIntegration;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;->compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
