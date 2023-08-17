.class abstract Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HeadersContinuation"
.end annotation


# instance fields
.field private final builder:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)V
    .locals 1

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;->builder:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;->builder:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;->close()V

    return-void
.end method

.method public abstract getStreamId()I
.end method

.method public final headersBlockBuilder()Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersContinuation;->builder:Lio/netty/handler/codec/http2/DefaultHttp2FrameReader$HeadersBlockBuilder;

    return-object v0
.end method

.method public abstract processFragment(ZLio/netty/buffer/ByteBuf;ILio/netty/handler/codec/http2/Http2FrameListener;)V
.end method
