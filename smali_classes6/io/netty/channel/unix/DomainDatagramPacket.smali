.class public final Lio/netty/channel/unix/DomainDatagramPacket;
.super Lio/netty/channel/DefaultAddressedEnvelope;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/ByteBufHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/DefaultAddressedEnvelope<",
        "Lio/netty/buffer/ByteBuf;",
        "Lio/netty/channel/unix/DomainSocketAddress;",
        ">;",
        "Lio/netty/buffer/ByteBufHolder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;Lio/netty/channel/unix/DomainSocketAddress;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/DefaultAddressedEnvelope;-><init>(Ljava/lang/Object;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic content()Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-super {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->copy()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/unix/DomainDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->duplicate()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/unix/DomainDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 3

    new-instance v0, Lio/netty/channel/unix/DomainDatagramPacket;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Lio/netty/channel/unix/DomainSocketAddress;

    invoke-direct {v0, p1, v1, v2}, Lio/netty/channel/unix/DomainDatagramPacket;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/channel/unix/DomainSocketAddress;Lio/netty/channel/unix/DomainSocketAddress;)V

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->retain()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->retain(I)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/channel/AddressedEnvelope;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->retain()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/channel/AddressedEnvelope;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->retain(I)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 0

    invoke-super {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->retain()Lio/netty/channel/AddressedEnvelope;

    return-object p0
.end method

.method public retain(I)Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/DefaultAddressedEnvelope;->retain(I)Lio/netty/channel/AddressedEnvelope;

    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->retain()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->retain(I)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->retainedDuplicate()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/unix/DomainDatagramPacket;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->touch()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/channel/AddressedEnvelope;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->touch()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 0

    invoke-super {p0}, Lio/netty/channel/DefaultAddressedEnvelope;->touch()Lio/netty/channel/AddressedEnvelope;

    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/channel/unix/DomainDatagramPacket;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/channel/DefaultAddressedEnvelope;->touch(Ljava/lang/Object;)Lio/netty/channel/AddressedEnvelope;

    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/unix/DomainDatagramPacket;->touch()Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/DomainDatagramPacket;->touch(Ljava/lang/Object;)Lio/netty/channel/unix/DomainDatagramPacket;

    move-result-object p1

    return-object p1
.end method
