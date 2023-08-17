.class public final Lio/netty/handler/proxy/ProxyConnectionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final authScheme:Ljava/lang/String;

.field private final destinationAddress:Ljava/net/SocketAddress;

.field private final protocol:Ljava/lang/String;

.field private final proxyAddress:Ljava/net/SocketAddress;

.field private strVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->protocol:Ljava/lang/String;

    const-string p1, "authScheme"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->authScheme:Ljava/lang/String;

    const-string p1, "proxyAddress"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->proxyAddress:Ljava/net/SocketAddress;

    const-string p1, "destinationAddress"

    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/SocketAddress;

    iput-object p1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->destinationAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public authScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->authScheme:Ljava/lang/String;

    return-object v0
.end method

.method public destinationAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->destinationAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public proxyAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/SocketAddress;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->proxyAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->strVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->authScheme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->proxyAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->destinationAddress:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/proxy/ProxyConnectionEvent;->strVal:Ljava/lang/String;

    return-object v0
.end method
