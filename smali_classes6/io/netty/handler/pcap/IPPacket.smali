.class final Lio/netty/handler/pcap/IPPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IPV6_VERSION_TRAFFIC_FLOW:I = 0x3938700

.field private static final MAX_TTL:B = -0x1t

.field private static final TCP:B = 0x6t

.field private static final UDP:B = 0x11t

.field private static final V4_HEADER_SIZE:S = 0x14s


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static writePacketv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)V
    .locals 2

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private static writePacketv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I[B[B)V
    .locals 1

    const v0, 0x3938700

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static writeTCPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public static writeTCPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I[B[B)V

    return-void
.end method

.method public static writeUDPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public static writeUDPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V
    .locals 1

    const/16 v0, 0x11

    invoke-static {p0, p1, v0, p2, p3}, Lio/netty/handler/pcap/IPPacket;->writePacketv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;I[B[B)V

    return-void
.end method
