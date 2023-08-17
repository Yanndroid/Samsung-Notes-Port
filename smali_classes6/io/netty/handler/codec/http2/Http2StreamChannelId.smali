.class final Lio/netty/handler/codec/http2/Http2StreamChannelId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelId;


# static fields
.field private static final serialVersionUID:J = -0x5c2e53f7550aee81L


# instance fields
.field private final id:I

.field private final parentId:Lio/netty/channel/ChannelId;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    iput p2, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    return-void
.end method


# virtual methods
.method public asLongText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    invoke-interface {v1}, Lio/netty/channel/ChannelId;->asLongText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asShortText()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    invoke-interface {v1}, Lio/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lio/netty/channel/ChannelId;)I
    .locals 2

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;

    if-eqz v0, :cond_1

    check-cast p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    iget-object v1, p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    iget p1, p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    sub-int/2addr v0, p1

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelId;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/Http2StreamChannelId;->compareTo(Lio/netty/channel/ChannelId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;

    iget v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    iget v2, p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    iget-object p1, p1, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2StreamChannelId;->parentId:Lio/netty/channel/ChannelId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2StreamChannelId;->asShortText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
