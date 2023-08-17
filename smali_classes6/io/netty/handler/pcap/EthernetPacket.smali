.class final Lio/netty/handler/pcap/EthernetPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DUMMY_DESTINATION_MAC_ADDRESS:[B

.field private static final DUMMY_SOURCE_MAC_ADDRESS:[B

.field private static final V4:I = 0x800

.field private static final V6:I = 0x86dd


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lio/netty/handler/pcap/EthernetPacket;->DUMMY_SOURCE_MAC_ADDRESS:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/netty/handler/pcap/EthernetPacket;->DUMMY_DESTINATION_MAC_ADDRESS:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x5et
        0x0t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x5et
        0x0t
        0x53t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeIPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    sget-object v0, Lio/netty/handler/pcap/EthernetPacket;->DUMMY_SOURCE_MAC_ADDRESS:[B

    sget-object v1, Lio/netty/handler/pcap/EthernetPacket;->DUMMY_DESTINATION_MAC_ADDRESS:[B

    const/16 v2, 0x800

    invoke-static {p0, p1, v0, v1, v2}, Lio/netty/handler/pcap/EthernetPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[BI)V

    return-void
.end method

.method public static writeIPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    sget-object v0, Lio/netty/handler/pcap/EthernetPacket;->DUMMY_SOURCE_MAC_ADDRESS:[B

    sget-object v1, Lio/netty/handler/pcap/EthernetPacket;->DUMMY_DESTINATION_MAC_ADDRESS:[B

    const v2, 0x86dd

    invoke-static {p0, p1, v0, v1, v2}, Lio/netty/handler/pcap/EthernetPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[BI)V

    return-void
.end method

.method private static writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[BI)V
    .locals 0

    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    return-void
.end method
