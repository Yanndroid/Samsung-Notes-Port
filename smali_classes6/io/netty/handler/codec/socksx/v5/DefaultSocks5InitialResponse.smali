.class public Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialResponse;
.super Lio/netty/handler/codec/socksx/v5/AbstractSocks5Message;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/socksx/v5/Socks5InitialResponse;


# instance fields
.field private final authMethod:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/socksx/v5/AbstractSocks5Message;-><init>()V

    const-string v0, "authMethod"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    iput-object p1, p0, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialResponse;->authMethod:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    return-void
.end method


# virtual methods
.method public authMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialResponse;->authMethod:Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "(decoderResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authMethod: "

    goto :goto_0

    :cond_0
    const-string v1, "(authMethod: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/handler/codec/socksx/v5/DefaultSocks5InitialResponse;->authMethod()Lio/netty/handler/codec/socksx/v5/Socks5AuthMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
