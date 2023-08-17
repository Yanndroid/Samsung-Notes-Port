.class public Lio/netty/channel/unix/SegmentedDatagramPacket;
.super Lio/netty/channel/socket/DatagramPacket;
.source "SourceFile"


# instance fields
.field private final segmentSize:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;)V

    const-string p1, "segmentSize"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lio/netty/channel/socket/DatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    const-string p1, "segmentSize"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->copy()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->copy()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 5

    new-instance v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->duplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->duplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 5

    new-instance v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/socket/DatagramPacket;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 4

    new-instance v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    iget v1, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/channel/AddressedEnvelope;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/channel/AddressedEnvelope;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/channel/socket/DatagramPacket;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    invoke-super {p0}, Lio/netty/channel/socket/DatagramPacket;->retain()Lio/netty/channel/socket/DatagramPacket;

    return-object p0
.end method

.method public retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DatagramPacket;->retain(I)Lio/netty/channel/socket/DatagramPacket;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retain(I)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retainedDuplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->retainedDuplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 5

    new-instance v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/channel/unix/SegmentedDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    return-object v0
.end method

.method public segmentSize()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize:I

    return v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/channel/AddressedEnvelope;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/channel/socket/DatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/channel/socket/DatagramPacket;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    invoke-super {p0}, Lio/netty/channel/socket/DatagramPacket;->touch()Lio/netty/channel/socket/DatagramPacket;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/socket/DatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/socket/DatagramPacket;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch()Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/SegmentedDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/SegmentedDatagramPacket;

    move-result-object p1

    return-object p1
.end method
