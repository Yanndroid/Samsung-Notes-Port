.class final Lio/netty/handler/codec/http2/DefaultHttp2Headers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Headers;
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
.method public process(B)Z
    .locals 0

    invoke-static {p1}, Lio/netty/util/AsciiString;->isUpperCase(B)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
