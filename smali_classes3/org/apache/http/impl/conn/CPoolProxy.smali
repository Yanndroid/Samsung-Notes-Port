.class Lorg/apache/http/impl/conn/CPoolProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ManagedHttpClientConnection;
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/CPoolEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    return-void
.end method

.method public static detach(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 0

    invoke-static {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->detach()Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 0

    invoke-static {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry()Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p0
.end method

.method private static getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;
    .locals 3

    const-class v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/conn/CPoolProxy;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected connection proxy class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newProxy(Lorg/apache/http/impl/conn/CPoolEntry;)Lorg/apache/http/HttpClientConnection;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/CPoolProxy;-><init>(Lorg/apache/http/impl/conn/CPoolEntry;)V

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->closeConnection()V

    :cond_0
    return-void
.end method

.method public detach()Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    return-object v0
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpInetConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpInetConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getPoolEntry()Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpInetConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/HttpClientConnection;->isResponseAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isStale()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/HttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/HttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->shutdownConnection()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPoolProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "detached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
