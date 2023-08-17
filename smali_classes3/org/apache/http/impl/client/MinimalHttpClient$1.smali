.class Lorg/apache/http/impl/client/MinimalHttpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/MinimalHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/impl/client/MinimalHttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/MinimalHttpClient;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/MinimalHttpClient$1;->this$0:Lorg/apache/http/impl/client/MinimalHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient$1;->this$0:Lorg/apache/http/impl/client/MinimalHttpClient;

    invoke-static {v0}, Lorg/apache/http/impl/client/MinimalHttpClient;->access$0(Lorg/apache/http/impl/client/MinimalHttpClient;)Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient$1;->this$0:Lorg/apache/http/impl/client/MinimalHttpClient;

    invoke-static {v0}, Lorg/apache/http/impl/client/MinimalHttpClient;->access$0(Lorg/apache/http/impl/client/MinimalHttpClient;)Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient$1;->this$0:Lorg/apache/http/impl/client/MinimalHttpClient;

    invoke-static {v0}, Lorg/apache/http/impl/client/MinimalHttpClient;->access$0(Lorg/apache/http/impl/client/MinimalHttpClient;)Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->shutdown()V

    return-void
.end method
