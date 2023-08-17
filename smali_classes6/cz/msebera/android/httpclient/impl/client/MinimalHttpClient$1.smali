.class Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcz/msebera/android/httpclient/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->getConnectionManager()Lcz/msebera/android/httpclient/conn/ClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;->this$0:Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;->this$0:Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->closeExpiredConnections()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;->this$0:Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public getSchemeRegistry()Lcz/msebera/android/httpclient/conn/scheme/SchemeRegistry;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public releaseConnection(Lcz/msebera/android/httpclient/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public requestConnection(Lcz/msebera/android/httpclient/conn/routing/HttpRoute;Ljava/lang/Object;)Lcz/msebera/android/httpclient/conn/ClientConnectionRequest;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient$1;->this$0:Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;->access$000(Lcz/msebera/android/httpclient/impl/client/MinimalHttpClient;)Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcz/msebera/android/httpclient/conn/HttpClientConnectionManager;->shutdown()V

    return-void
.end method
