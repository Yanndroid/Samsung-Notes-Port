.class final Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;
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
    name = "UrlDecoder"
.end annotation


# instance fields
.field private hiByte:B

.field private nextEscapedIdx:I

.field private final output:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;)I
    .locals 0

    iget p0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    return p0
.end method


# virtual methods
.method public process(B)Z
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_0

    iput-byte p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->hiByte:B

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    goto :goto_1

    :cond_0
    iget-byte v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->hiByte:B

    int-to-char v0, v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v0

    int-to-char p1, p1

    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p1

    invoke-virtual {v3, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    iput v2, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    return v2

    :cond_3
    const/16 v0, 0x25

    if-ne p1, v0, :cond_4

    iput v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    goto :goto_1

    :cond_4
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :goto_1
    return v1
.end method
