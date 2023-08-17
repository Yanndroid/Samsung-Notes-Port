.class Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 7

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    move-object v4, p2

    move v5, p3

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Lcz/msebera/android/httpclient/params/HttpParams;)Ljava/net/Socket;
    .locals 0

    iget-object p1, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    instance-of v0, p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    check-cast p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;

    iget-object p1, p1, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFactory()Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/conn/scheme/SchemeSocketFactoryAdaptor;->factory:Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result p1

    return p1
.end method
