.class final Lio/grpc/netty/SendGrpcFrameCommand;
.super Lio/netty/buffer/DefaultByteBufHolder;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/WriteQueue$QueuedCommand;


# instance fields
.field private final endStream:Z

.field private final link:Lio/perfmark/Link;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private final stream:Lio/grpc/netty/StreamIdHolder;


# direct methods
.method public constructor <init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/buffer/ByteBuf;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lio/netty/buffer/DefaultByteBufHolder;-><init>(Lio/netty/buffer/ByteBuf;)V

    iput-object p1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    iput-boolean p3, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->link:Lio/perfmark/Link;

    return-void
.end method


# virtual methods
.method public copy()Lio/netty/buffer/ByteBufHolder;
    .locals 4

    new-instance v0, Lio/grpc/netty/SendGrpcFrameCommand;

    iget-object v1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    iget-boolean v3, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/SendGrpcFrameCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/buffer/ByteBuf;Z)V

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 4

    new-instance v0, Lio/grpc/netty/SendGrpcFrameCommand;

    iget-object v1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    iget-boolean v3, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/SendGrpcFrameCommand;-><init>(Lio/grpc/netty/StreamIdHolder;Lio/netty/buffer/ByteBuf;Z)V

    return-object v0
.end method

.method public endStream()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/grpc/netty/SendGrpcFrameCommand;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lio/grpc/netty/SendGrpcFrameCommand;

    iget-object v1, p1, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    iget-object v2, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    iget-boolean v2, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getLink()Lio/perfmark/Link;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendGrpcFrameCommand;->link:Lio/perfmark/Link;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public promise()Lio/netty/channel/ChannelPromise;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendGrpcFrameCommand;->promise:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method public promise(Lio/netty/channel/ChannelPromise;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->promise:Lio/netty/channel/ChannelPromise;

    return-void
.end method

.method public retain()Lio/grpc/netty/SendGrpcFrameCommand;
    .locals 0

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->retain()Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public retain(I)Lio/grpc/netty/SendGrpcFrameCommand;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/DefaultByteBufHolder;->retain(I)Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/SendGrpcFrameCommand;->retain()Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/SendGrpcFrameCommand;->retain(I)Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/SendGrpcFrameCommand;->retain()Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/SendGrpcFrameCommand;->retain(I)Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object p1

    return-object p1
.end method

.method public final run(Lio/netty/channel/Channel;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendGrpcFrameCommand;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, p0, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method public stream()Lio/grpc/netty/StreamIdHolder;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/grpc/netty/SendGrpcFrameCommand;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(streamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->stream:Lio/grpc/netty/StreamIdHolder;

    invoke-interface {v1}, Lio/grpc/netty/StreamIdHolder;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/grpc/netty/SendGrpcFrameCommand;->endStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touch()Lio/grpc/netty/SendGrpcFrameCommand;
    .locals 0

    invoke-super {p0}, Lio/netty/buffer/DefaultByteBufHolder;->touch()Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/grpc/netty/SendGrpcFrameCommand;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/buffer/DefaultByteBufHolder;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/SendGrpcFrameCommand;->touch()Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/SendGrpcFrameCommand;->touch(Ljava/lang/Object;)Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/SendGrpcFrameCommand;->touch()Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/netty/SendGrpcFrameCommand;->touch(Ljava/lang/Object;)Lio/grpc/netty/SendGrpcFrameCommand;

    move-result-object p1

    return-object p1
.end method
