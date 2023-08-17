.class public final Lio/netty/channel/unix/NativeInetAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IPV4_MAPPED_IPV6_PREFIX:[B


# instance fields
.field public final address:[B

.field public final scopeId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/channel/unix/NativeInetAddress;->IPV4_MAPPED_IPV6_PREFIX:[B

    return-void

    :array_0
    .array-data 1
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
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/unix/NativeInetAddress;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    iput p2, p0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    return-void
.end method

.method public static address([BII)Ljava/net/InetSocketAddress;
    .locals 5

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x4

    invoke-static {p0, v1}, Lio/netty/channel/unix/NativeInetAddress;->decodeInt([BI)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    const/16 v4, 0x18

    if-ne p2, v4, :cond_0

    const/16 p2, 0x10

    :try_start_0
    new-array v4, p2, [B

    invoke-static {p0, p1, v4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v3

    invoke-static {p0, v0}, Lio/netty/channel/unix/NativeInetAddress;->decodeInt([BI)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, v4, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    :cond_1
    const/4 p2, 0x4

    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    :goto_0
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/Error;

    const-string p2, "Should never happen"

    invoke-direct {p1, p2, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static copyIpv4MappedIpv6Address([B[B)V
    .locals 3

    sget-object v0, Lio/netty/channel/unix/NativeInetAddress;->IPV4_MAPPED_IPV6_PREFIX:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p0

    const/16 v1, 0xc

    invoke-static {p0, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static decodeInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static ipv4MappedIpv6Address([B)[B
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {p0, v0}, Lio/netty/channel/unix/NativeInetAddress;->copyIpv4MappedIpv6Address([B[B)V

    return-object v0
.end method

.method public static newInstance(Ljava/net/InetAddress;)Lio/netty/channel/unix/NativeInetAddress;
    .locals 2

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    instance-of v1, p0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    new-instance v1, Lio/netty/channel/unix/NativeInetAddress;

    check-cast p0, Ljava/net/Inet6Address;

    invoke-virtual {p0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result p0

    invoke-direct {v1, v0, p0}, Lio/netty/channel/unix/NativeInetAddress;-><init>([BI)V

    return-object v1

    :cond_0
    new-instance p0, Lio/netty/channel/unix/NativeInetAddress;

    invoke-static {v0}, Lio/netty/channel/unix/NativeInetAddress;->ipv4MappedIpv6Address([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/unix/NativeInetAddress;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public address()[B
    .locals 1

    iget-object v0, p0, Lio/netty/channel/unix/NativeInetAddress;->address:[B

    return-object v0
.end method

.method public scopeId()I
    .locals 1

    iget v0, p0, Lio/netty/channel/unix/NativeInetAddress;->scopeId:I

    return v0
.end method
