.class final Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultPropertyKey"
.end annotation


# instance fields
.field public final index:I

.field public final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;I)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    return-void
.end method


# virtual methods
.method public verifyConnection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Using a key that was not created by this connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
