.class final Lio/netty/handler/codec/spdy/SpdyProtocolException$StacklessSpdyProtocolException;
.super Lio/netty/handler/codec/spdy/SpdyProtocolException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdyProtocolException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StacklessSpdyProtocolException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5777e18ef010022bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;ZLio/netty/handler/codec/spdy/SpdyProtocolException$1;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
