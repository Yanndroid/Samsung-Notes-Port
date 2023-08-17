.class public final Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositeStreamException"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http2/Http2Exception;",
        "Ljava/lang/Iterable<",
        "Lio/netty/handler/codec/http2/Http2Exception$StreamException;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6268c5954637dca7L


# instance fields
.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/Http2Exception$StreamException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;I)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->NO_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->exceptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/handler/codec/http2/Http2Exception$StreamException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
