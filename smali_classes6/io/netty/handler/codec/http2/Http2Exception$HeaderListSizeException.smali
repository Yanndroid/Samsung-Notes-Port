.class public final Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;
.super Lio/netty/handler/codec/http2/Http2Exception$StreamException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderListSizeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a3ae474f0cf4b8dL


# instance fields
.field private final decode:Z


# direct methods
.method public constructor <init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;->decode:Z

    return-void
.end method


# virtual methods
.method public duringDecode()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;->decode:Z

    return v0
.end method
