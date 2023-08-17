.class final Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlEncodedDetector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$1;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlEncodedDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public process(B)Z
    .locals 1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
