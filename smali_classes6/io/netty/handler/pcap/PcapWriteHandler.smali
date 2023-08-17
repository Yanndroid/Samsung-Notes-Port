.class public final Lio/netty/handler/pcap/PcapWriteHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/pcap/PcapWriteHandler$Builder;,
        Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;
    }
.end annotation


# instance fields
.field private final captureZeroByte:Z

.field private channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

.field private handlerAddr:Ljava/net/InetSocketAddress;

.field private initialized:Z

.field private initiatiorAddr:Ljava/net/InetSocketAddress;

.field private isClosed:Z

.field private isServerPipeline:Z

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final outputStream:Ljava/io/OutputStream;

.field private pCapWriter:Lio/netty/handler/pcap/PcapWriter;

.field private receiveSegmentNumber:I

.field private sendSegmentNumber:I

.field private final writePcapGlobalHeader:Z


# direct methods
.method private constructor <init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-class v0, Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v0, 0x1

    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iput-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$000(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$100(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->writePcapGlobalHeader:Z

    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$200(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$300(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Ljava/net/InetSocketAddress;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$400(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Ljava/net/InetSocketAddress;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-static {p1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;->access$500(Lio/netty/handler/pcap/PcapWriteHandler$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;Lio/netty/handler/pcap/PcapWriteHandler$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/netty/handler/pcap/PcapWriteHandler;-><init>(Lio/netty/handler/pcap/PcapWriteHandler$Builder;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/pcap/PcapWriteHandler;-><init>(Ljava/io/OutputStream;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const-class v0, Lio/netty/handler/pcap/PcapWriteHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v0, 0x1

    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iput v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    const-string v0, "OutputStream"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    iput-object p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    iput-boolean p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    iput-boolean p3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->writePcapGlobalHeader:Z

    return-void
.end method

.method public static builder()Lio/netty/handler/pcap/PcapWriteHandler$Builder;
    .locals 2

    new-instance v0, Lio/netty/handler/pcap/PcapWriteHandler$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/pcap/PcapWriteHandler$Builder;-><init>(Lio/netty/handler/pcap/PcapWriteHandler$1;)V

    return-object v0
.end method

.method private completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    invoke-static {p1}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    invoke-static {p2}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result p2

    invoke-static {v0, p3, p1, p2}, Lio/netty/handler/pcap/IPPacket;->writeTCPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    invoke-static {v0, p3, p1, p2}, Lio/netty/handler/pcap/IPPacket;->writeTCPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V

    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    :goto_0
    iget-object p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    invoke-virtual {p1, p4, v1}, Lio/netty/handler/pcap/PcapWriter;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Source and Destination IP Address versions are not same. Source Address: {}, Destination Address: {}"

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-interface {p3, v2, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {p4}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p3, "Caught Exception While Writing Packet into Pcap"

    invoke-interface {p2, p3, p1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p5, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {p4}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :goto_2
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {p4}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method

.method private completeUDPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p4}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object p4

    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;

    invoke-static {p1}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    check-cast p2, Ljava/net/Inet4Address;

    invoke-static {p2}, Lio/netty/util/NetUtil;->ipv4AddressToInt(Ljava/net/Inet4Address;)I

    move-result p2

    invoke-static {v0, p3, p1, p2}, Lio/netty/handler/pcap/IPPacket;->writeUDPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv4(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    invoke-static {v0, p3, p1, p2}, Lio/netty/handler/pcap/IPPacket;->writeUDPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;[B[B)V

    invoke-static {v1, v0}, Lio/netty/handler/pcap/EthernetPacket;->writeIPv6(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    :goto_0
    iget-object p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    invoke-virtual {p1, p4, v1}, Lio/netty/handler/pcap/PcapWriter;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Source and Destination IP Address versions are not same. Source Address: {}, Destination Address: {}"

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-interface {p3, v2, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {p4}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p3, "Caught Exception While Writing Packet into Pcap"

    invoke-interface {p2, p3, p1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p5, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {p4}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :goto_2
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    invoke-interface {p4}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method

.method private handleTCP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_4

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    if-nez v1, :cond_0

    iget-object v0, v9, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Discarding Zero Byte TCP Packet. isWriteOperation {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v10

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {v10}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v18

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz p3, :cond_2

    :try_start_0
    iget-boolean v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    if-eqz v1, :cond_1

    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    :goto_0
    move-object/from16 v20, v1

    move-object/from16 v19, v3

    iget v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v12, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v13, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v13, v7, v11

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v2, 0x1

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v3, v0

    move-object/from16 v6, v20

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    iget v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    add-int v14, v1, v0

    iput v14, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    const/4 v1, 0x0

    iget v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    new-array v3, v12, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v13, v3, v11

    move-object/from16 v11, v18

    move-object v12, v1

    move v13, v2

    move-object/from16 v17, v3

    invoke-static/range {v11 .. v17}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v2, 0x1

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    :goto_1
    const/4 v8, 0x1

    move-object/from16 v1, p0

    move v3, v0

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    if-eqz v1, :cond_3

    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    goto :goto_2

    :cond_3
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    :goto_2
    move-object/from16 v20, v1

    move-object/from16 v19, v3

    iget v3, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v12, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v13, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v13, v7, v11

    move-object/from16 v1, v18

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v2, 0x0

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v3, v0

    move-object/from16 v6, v20

    move-object/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lio/netty/handler/pcap/PcapWriteHandler;->logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    iget v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    add-int v14, v1, v0

    iput v14, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    const/4 v1, 0x0

    iget v2, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    new-array v3, v12, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v13, v3, v11

    move-object/from16 v11, v18

    move-object v12, v1

    move v13, v2

    move-object/from16 v17, v3

    invoke-static/range {v11 .. v17}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v18

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v2, 0x0

    iget v4, v9, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v5, v9, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :goto_3
    invoke-interface/range {v18 .. v18}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface/range {v18 .. v18}, Lio/netty/util/ReferenceCounted;->release()Z

    throw v0

    :cond_4
    iget-object v1, v9, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Discarding Pcap Write for TCP Object: {}"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method private handleUDP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 10

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :try_start_0
    instance-of v1, p2, Lio/netty/channel/socket/DatagramPacket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "Writing UDP Data of {} Bytes, Src Addr {}, Dst Addr {}"

    const-string v7, "Discarding Zero Byte UDP Packet"

    if-eqz v1, :cond_2

    :try_start_1
    move-object v1, p2

    check-cast v1, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {v1}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    if-nez v1, :cond_0

    iget-object p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :cond_0
    :try_start_2
    check-cast p2, Lio/netty/channel/socket/DatagramPacket;

    invoke-virtual {p2}, Lio/netty/channel/socket/DatagramPacket;->duplicate()Lio/netty/channel/socket/DatagramPacket;

    move-result-object p2

    invoke-virtual {p2}, Lio/netty/channel/DefaultAddressedEnvelope;->sender()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Lio/netty/channel/DefaultAddressedEnvelope;->recipient()Ljava/net/SocketAddress;

    move-result-object v7

    check-cast v7, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    :cond_1
    move-object v8, v1

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v4

    aput-object v8, v5, v3

    aput-object v7, v5, v2

    invoke-interface {v1, v6, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lio/netty/channel/DefaultAddressedEnvelope;->content()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lio/netty/handler/pcap/UDPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeUDPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    goto/16 :goto_0

    :cond_2
    instance-of v1, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    instance-of v1, v1, Lio/netty/channel/socket/DatagramChannel;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    check-cast v1, Lio/netty/channel/socket/DatagramChannel;

    invoke-interface {v1}, Lio/netty/channel/socket/DatagramChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->captureZeroByte:Z

    if-nez v1, :cond_4

    iget-object p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :cond_4
    :try_start_3
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    aput-object v4, v5, v3

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    aput-object v3, v5, v2

    invoke-interface {v1, v6, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lio/netty/handler/pcap/UDPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;II)V

    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v1, p0

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeUDPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Discarding Pcap Write for UDP Object: {}"

    invoke-interface {p1, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1
.end method

.method private initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 21

    move-object/from16 v7, p0

    iget-boolean v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v8

    iget-boolean v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->writePcapGlobalHeader:Z

    if-eqz v0, :cond_1

    invoke-interface {v8}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :try_start_0
    new-instance v0, Lio/netty/handler/pcap/PcapWriter;

    iget-object v2, v7, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v2, v1}, Lio/netty/handler/pcap/PcapWriter;-><init>(Ljava/io/OutputStream;Lio/netty/buffer/ByteBuf;)V

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    move-object/from16 v9, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-object/from16 v9, p1

    invoke-interface {v9, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    iget-object v2, v7, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Caught Exception While Initializing PcapWriter, Closing Channel."

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    goto :goto_1

    :goto_0
    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    throw v0

    :cond_1
    move-object/from16 v9, p1

    new-instance v0, Lio/netty/handler/pcap/PcapWriter;

    iget-object v1, v7, Lio/netty/handler/pcap/PcapWriteHandler;->outputStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lio/netty/handler/pcap/PcapWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    :goto_1
    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_4

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/socket/SocketChannel;

    if-eqz v0, :cond_3

    sget-object v0, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/socket/ServerSocketChannel;

    if-eqz v0, :cond_2

    iput-boolean v11, v7, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    goto :goto_3

    :cond_2
    iput-boolean v10, v7, Lio/netty/handler/pcap/PcapWriteHandler;->isServerPipeline:Z

    :goto_2
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    goto :goto_4

    :cond_3
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/socket/DatagramChannel;

    if-eqz v0, :cond_4

    sget-object v0, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    iput-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/DatagramChannel;

    invoke-interface {v0}, Lio/netty/channel/socket/DatagramChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_4
    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_5

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Initiating Fake TCP 3-Way Handshake"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    invoke-interface {v8}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v19

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_2
    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v17

    new-array v0, v11, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v20, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->SYN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v20, v0, v10

    move-object/from16 v12, v19

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v2, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object v5, v8

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v17

    const/4 v0, 0x2

    new-array v0, v0, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v20, v0, v10

    sget-object v20, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v20, v0, v11

    move-object/from16 v12, v19

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v2, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object v5, v8

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v16

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v17

    new-array v0, v11, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v20, v0, v10

    move-object/from16 v12, v19

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v2, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, v7, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object/from16 v1, p0

    move-object/from16 v4, v19

    move-object v5, v8

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface/range {v19 .. v19}, Lio/netty/util/ReferenceCounted;->release()Z

    iget-object v0, v7, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Finished Fake TCP 3-Way Handshake"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-interface/range {v19 .. v19}, Lio/netty/util/ReferenceCounted;->release()Z

    throw v0

    :cond_5
    :goto_5
    iput-boolean v11, v7, Lio/netty/handler/pcap/PcapWriteHandler;->initialized:Z

    return-void
.end method

.method private logDiscard()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Discarding pcap write because channel type is unknown. The channel this handler is registered on is not a SocketChannel or DatagramChannel, so the inference does not work. Please call forceTcpChannel or forceUdpChannel before registering the handler."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method private logTCP(ZIIILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p7, :cond_0

    iget-object p2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-array p7, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p7, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p7, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p7, v3

    aput-object p6, p7, v2

    aput-object p5, p7, v1

    const-string p1, "Writing TCP ACK, isWriteOperation {}, Segment Number {}, Ack Number {}, Src Addr {}, Dst Addr {}"

    invoke-interface {p2, p1, p7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p7, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    aput-object p5, v6, v1

    aput-object p6, v6, v0

    const-string p1, "Writing TCP Data of {} Bytes, isWriteOperation {}, Segment Number {}, Ack Number {}, Src Addr {}, Dst Addr {}"

    invoke-interface {p7, p1, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/pcap/PcapWriteHandler;->initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isClosed:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lio/netty/handler/pcap/PcapWriteHandler;->initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/pcap/PcapWriteHandler;->handleTCP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/pcap/PcapWriteHandler;->handleUDP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->logDiscard()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/ChannelInboundHandlerAdapter;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "PcapWriterHandler is already closed"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isClosed:Z

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->pCapWriter:Lio/netty/handler/pcap/PcapWriter;

    invoke-virtual {v0}, Lio/netty/handler/pcap/PcapWriter;->close()V

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "PcapWriterHandler is now closed"

    :goto_0
    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 9

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    const/4 v1, 0x2

    new-array v7, v1, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v1, 0x0

    sget-object v8, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->RST:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v8, v7, v1

    const/4 v1, 0x1

    sget-object v8, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v8, v7, v1

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v2, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v1, p0

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Sent Fake TCP RST to close connection"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->close()V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 14

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Starting Fake TCP FIN+ACK Flow to close connection"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    const/4 v9, 0x2

    new-array v7, v9, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    sget-object v10, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->FIN:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v11, 0x0

    aput-object v10, v7, v11

    sget-object v12, Lio/netty/handler/pcap/TCPPacket$TCPFlag;->ACK:Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    const/4 v13, 0x1

    aput-object v12, v7, v13

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v2, 0x0

    iget v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    iget v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v9, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v10, v7, v11

    aput-object v12, v7, v13

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    move-object v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V

    const/4 v2, 0x0

    iget v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->sendSegmentNumber:I

    add-int/lit8 v3, v1, 0x1

    iget v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->receiveSegmentNumber:I

    add-int/lit8 v4, v1, 0x1

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    iget-object v1, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    new-array v7, v13, [Lio/netty/handler/pcap/TCPPacket$TCPFlag;

    aput-object v12, v7, v11

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lio/netty/handler/pcap/TCPPacket;->writePacket(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;IIII[Lio/netty/handler/pcap/TCPPacket$TCPFlag;)V

    iget-object v3, p0, Lio/netty/handler/pcap/PcapWriteHandler;->initiatiorAddr:Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/netty/handler/pcap/PcapWriteHandler;->handlerAddr:Ljava/net/InetSocketAddress;

    move-object v2, p0

    move-object v5, v8

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/pcap/PcapWriteHandler;->completeTCPWrite(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBufAllocator;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v8}, Lio/netty/util/ReferenceCounted;->release()Z

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Finished Fake TCP FIN+ACK Flow to close connection"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v8}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->close()V

    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    iget-boolean v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->isClosed:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lio/netty/handler/pcap/PcapWriteHandler;->initializeIfNecessary(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object v0, p0, Lio/netty/handler/pcap/PcapWriteHandler;->channelType:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->TCP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/pcap/PcapWriteHandler;->handleTCP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;->UDP:Lio/netty/handler/pcap/PcapWriteHandler$ChannelType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lio/netty/handler/pcap/PcapWriteHandler;->handleUDP(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/handler/pcap/PcapWriteHandler;->logDiscard()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lio/netty/channel/ChannelDuplexHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
