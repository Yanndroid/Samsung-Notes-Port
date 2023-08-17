.class public final Lio/netty/util/internal/SocketUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/SocketUtils;->EMPTY:Ljava/util/Enumeration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(Ljava/nio/channels/ServerSocketChannel;)Ljava/nio/channels/SocketChannel;
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$5;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$5;-><init>(Ljava/nio/channels/ServerSocketChannel;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static addressByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$8;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/net/UnknownHostException;

    throw p0
.end method

.method public static addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/SocketUtils$11;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$11;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Enumeration;

    if-nez p0, :cond_0

    invoke-static {}, Lio/netty/util/internal/SocketUtils;->empty()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static allAddressesByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$9;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$9;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/net/UnknownHostException;

    throw p0
.end method

.method public static bind(Ljava/net/Socket;Ljava/net/SocketAddress;)V
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$2;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$2;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static bind(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "Usage guarded by java version check"
    .end annotation

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$6;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$6;-><init>(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static bind(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V
    .locals 1
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "Usage guarded by java version check"
    .end annotation

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$4;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$4;-><init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/SocketUtils$1;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method public static connect(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$3;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$3;-><init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method private static empty()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/internal/SocketUtils;->EMPTY:Ljava/util/Enumeration;

    return-object v0
.end method

.method public static hardwareAddressFromNetworkInterface(Ljava/net/NetworkInterface;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$13;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$13;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/net/SocketException;

    throw p0
.end method

.method public static localSocketAddress(Ljava/net/ServerSocket;)Ljava/net/SocketAddress;
    .locals 1

    new-instance v0, Lio/netty/util/internal/SocketUtils$7;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$7;-><init>(Ljava/net/ServerSocket;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/SocketAddress;

    return-object p0
.end method

.method public static loopbackAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation build Lio/netty/util/internal/SuppressJava6Requirement;
        reason = "Usage guarded by java version check"
    .end annotation

    new-instance v0, Lio/netty/util/internal/SocketUtils$12;

    invoke-direct {v0}, Lio/netty/util/internal/SocketUtils$12;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public static socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 1

    new-instance v0, Lio/netty/util/internal/SocketUtils$10;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$10;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetSocketAddress;

    return-object p0
.end method
