.class public abstract Lio/netty/handler/codec/socksx/AbstractSocksMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/socksx/SocksMessage;


# instance fields
.field private decoderResult:Lio/netty/handler/codec/DecoderResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    iput-object v0, p0, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method


# virtual methods
.method public decoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-object v0
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 1

    const-string v0, "decoderResult"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/DecoderResult;

    iput-object p1, p0, Lio/netty/handler/codec/socksx/AbstractSocksMessage;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-void
.end method
