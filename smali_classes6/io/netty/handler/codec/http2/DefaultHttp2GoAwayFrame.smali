.class public final Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;
.super Lio/netty/buffer/DefaultByteBufHolder;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2GoAwayFrame;


# instance fields
.field private final errorCode:J

.field private extraStreamIds:I

.field private final lastStreamId:I


# direct methods
.method public constructor <init>(IJLio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-direct {p0, p4}, Lio/netty/buffer/DefaultByteBufHolder;-><init>(Lio/netty/buffer/ByteBuf;)V

    iput-wide p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->lastStreamId:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(JLio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(JLio/netty/buffer/ByteBuf;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(IJLio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;)V
    .locals 2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(JLio/netty/buffer/ByteBuf;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->copy()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 5

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->lastStreamId:I

    iget-wide v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(IJLio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->duplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->duplicate()Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    iget-wide v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    iget-wide v4, p1, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    iget v2, p1, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    if-ne v0, v2, :cond_1

    invoke-super {p0, p1}, Lio/netty/buffer/DefaultByteBufHolder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public errorCode()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    return-wide v0
.end method

.method public extraStreamIds()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    add-int/2addr v0, v1

    return v0
.end method

.method public lastStreamId()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->lastStreamId:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "GOAWAY"

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 3

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;

    iget-wide v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    invoke-direct {v0, v1, v2, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;-><init>(JLio/netty/buffer/ByteBuf;)V

    iget p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->setExtraStreamIds(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->retain()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->retain(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 0

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->retain()Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/DefaultByteBufHolder;->retain(I)Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->retain()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->retain(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->retainedDuplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 1

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->retainedDuplicate()Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    return-object v0
.end method

.method public setExtraStreamIds(I)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 1

    const-string v0, "extraStreamIds"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->errorCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraStreamIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->extraStreamIds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->lastStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->touch()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 0

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->touch()Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/DefaultByteBufHolder;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->touch()Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2GoAwayFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2GoAwayFrame;

    move-result-object p1

    return-object p1
.end method
