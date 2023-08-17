.class final Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAuthoritative(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isCacheable(Lio/netty/handler/codec/http2/Http2Headers;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSafe(Lio/netty/handler/codec/http2/Http2Headers;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
