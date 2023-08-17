.class final Lio/netty/handler/codec/http/HttpHeaderDateFormat$1;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpHeaderDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/handler/codec/http/HttpHeaderDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lio/netty/handler/codec/http/HttpHeaderDateFormat;
    .locals 2

    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;-><init>(Lio/netty/handler/codec/http/HttpHeaderDateFormat$1;)V

    return-object v0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat$1;->initialValue()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v0

    return-object v0
.end method
