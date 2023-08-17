.class final Lio/netty/handler/pcap/PcapHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GLOBAL_HEADER:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/pcap/PcapHeaders;->GLOBAL_HEADER:[B

    return-void

    :array_0
    .array-data 1
        -0x5ft
        -0x4et
        -0x3dt
        -0x2ct
        0x0t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeGlobalHeader(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    sget-object v0, Lio/netty/handler/pcap/PcapHeaders;->GLOBAL_HEADER:[B

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static writePacketHeader(Lio/netty/buffer/ByteBuf;IIII)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p3}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p4}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method
