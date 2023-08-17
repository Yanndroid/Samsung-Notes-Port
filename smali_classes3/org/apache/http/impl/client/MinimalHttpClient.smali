.class Lorg/apache/http/impl/client/MinimalHttpClient;
.super Lorg/apache/http/impl/client/CloseableHttpClient;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final params:Lorg/apache/http/params/HttpParams;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/MinimalClientExec;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionManager;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/http/impl/client/CloseableHttpClient;-><init>()V

    const-string v0, "HTTP connection manager"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/HttpClientConnectionManager;

    iput-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    new-instance v0, Lorg/apache/http/impl/execchain/MinimalClientExec;

    new-instance v1, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    sget-object v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    sget-object v3, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/http/impl/execchain/MinimalClientExec;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->requestExecutor:Lorg/apache/http/impl/execchain/MinimalClientExec;

    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->params:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method public static synthetic access$0(Lorg/apache/http/impl/client/MinimalHttpClient;)Lorg/apache/http/conn/HttpClientConnectionManager;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method public doExecute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 4

    const-string v0, "Target host"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Lorg/apache/http/client/methods/HttpExecutionAware;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/http/client/methods/HttpExecutionAware;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p3, Lorg/apache/http/protocol/BasicHttpContextHC4;

    invoke-direct {p3}, Lorg/apache/http/protocol/BasicHttpContextHC4;-><init>()V

    :goto_1
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object p3

    new-instance v3, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v3, p1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    instance-of p1, p2, Lorg/apache/http/client/methods/Configurable;

    if-eqz p1, :cond_2

    check-cast p2, Lorg/apache/http/client/methods/Configurable;

    invoke-interface {p2}, Lorg/apache/http/client/methods/Configurable;->getConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p3, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V

    :cond_3
    iget-object p1, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->requestExecutor:Lorg/apache/http/impl/execchain/MinimalClientExec;

    invoke-virtual {p1, v3, v2, p3, v0}, Lorg/apache/http/impl/execchain/MinimalClientExec;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {p2, p1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/MinimalHttpClient$1;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/MinimalHttpClient$1;-><init>(Lorg/apache/http/impl/client/MinimalHttpClient;)V

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/MinimalHttpClient;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method
