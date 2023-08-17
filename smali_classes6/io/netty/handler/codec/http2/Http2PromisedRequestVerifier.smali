.class public interface abstract Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS_VERIFY:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;->ALWAYS_VERIFY:Lio/netty/handler/codec/http2/Http2PromisedRequestVerifier;

    return-void
.end method


# virtual methods
.method public abstract isAuthoritative(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)Z
.end method

.method public abstract isCacheable(Lio/netty/handler/codec/http2/Http2Headers;)Z
.end method

.method public abstract isSafe(Lio/netty/handler/codec/http2/Http2Headers;)Z
.end method
