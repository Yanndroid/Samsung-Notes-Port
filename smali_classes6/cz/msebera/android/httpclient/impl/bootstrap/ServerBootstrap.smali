.class public Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

.field private connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

.field private connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

.field private expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

.field private handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

.field private httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

.field private listenerPort:I

.field private localAddress:Ljava/net/InetAddress;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private serverInfo:Ljava/lang/String;

.field private serverSocketFactory:Ljavax/net/ServerSocketFactory;

.field private socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bootstrap()Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public create()Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-static {}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object v1

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestFirst:Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFirst:Ljava/util/LinkedList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "Apache-HttpCore/1.1"

    :cond_2
    const/4 v4, 0x4

    new-array v4, v4, [Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    new-instance v5, Lcz/msebera/android/httpclient/protocol/ResponseDate;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/ResponseDate;-><init>()V

    aput-object v5, v4, v2

    const/4 v5, 0x1

    new-instance v6, Lcz/msebera/android/httpclient/protocol/ResponseServer;

    invoke-direct {v6, v3}, Lcz/msebera/android/httpclient/protocol/ResponseServer;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v3, 0x2

    new-instance v5, Lcz/msebera/android/httpclient/protocol/ResponseContent;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/ResponseContent;-><init>()V

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;

    invoke-direct {v5}, Lcz/msebera/android/httpclient/protocol/ResponseConnControl;-><init>()V

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->requestLast:Ljava/util/LinkedList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpRequestInterceptor;

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseLast:Ljava/util/LinkedList;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcz/msebera/android/httpclient/HttpResponseInterceptor;

    invoke-virtual {v1, v4}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    move-result-object v1

    :cond_5
    move-object v4, v1

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    if-nez v1, :cond_6

    new-instance v1, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;

    invoke-direct {v1}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;-><init>()V

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    invoke-virtual {v1, v6, v5}, Lcz/msebera/android/httpclient/protocol/UriHttpRequestHandlerMapper;->register(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)V

    goto :goto_4

    :cond_6
    move-object v7, v1

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    if-nez v1, :cond_7

    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultConnectionReuseStrategy;

    :cond_7
    move-object v5, v1

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    if-nez v1, :cond_8

    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpResponseFactory;

    :cond_8
    move-object v6, v1

    new-instance v13, Lcz/msebera/android/httpclient/protocol/HttpService;

    iget-object v8, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    move-object v3, v13

    invoke-direct/range {v3 .. v8}, Lcz/msebera/android/httpclient/protocol/HttpService;-><init>(Lcz/msebera/android/httpclient/protocol/HttpProcessor;Lcz/msebera/android/httpclient/ConnectionReuseStrategy;Lcz/msebera/android/httpclient/HttpResponseFactory;Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)V

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v1

    goto :goto_5

    :cond_9
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v1

    :cond_a
    :goto_5
    move-object v12, v1

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    if-eqz v1, :cond_b

    new-instance v1, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    iget-object v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;-><init>(Lcz/msebera/android/httpclient/config/ConnectionConfig;)V

    goto :goto_6

    :cond_b
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnectionFactory;

    :cond_c
    :goto_6
    move-object v14, v1

    iget-object v1, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    if-nez v1, :cond_d

    sget-object v1, Lcz/msebera/android/httpclient/ExceptionLogger;->NO_OP:Lcz/msebera/android/httpclient/ExceptionLogger;

    :cond_d
    move-object/from16 v16, v1

    new-instance v1, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;

    iget v3, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    if-lez v3, :cond_e

    move v9, v3

    goto :goto_7

    :cond_e
    move v9, v2

    :goto_7
    iget-object v10, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    iget-object v2, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    sget-object v2, Lcz/msebera/android/httpclient/config/SocketConfig;->DEFAULT:Lcz/msebera/android/httpclient/config/SocketConfig;

    :goto_8
    move-object v11, v2

    iget-object v15, v0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcz/msebera/android/httpclient/impl/bootstrap/HttpServer;-><init>(ILjava/net/InetAddress;Lcz/msebera/android/httpclient/config/SocketConfig;Ljavax/net/ServerSocketFactory;Lcz/msebera/android/httpclient/protocol/HttpService;Lcz/msebera/android/httpclient/HttpConnectionFactory;Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;Lcz/msebera/android/httpclient/ExceptionLogger;)V

    return-object v1
.end method

.method public final registerHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final setConnectionConfig(Lcz/msebera/android/httpclient/config/ConnectionConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionConfig:Lcz/msebera/android/httpclient/config/ConnectionConfig;

    return-object p0
.end method

.method public final setConnectionFactory(Lcz/msebera/android/httpclient/HttpConnectionFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/HttpConnectionFactory<",
            "+",
            "Lcz/msebera/android/httpclient/impl/DefaultBHttpServerConnection;",
            ">;)",
            "Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;"
        }
    .end annotation

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connectionFactory:Lcz/msebera/android/httpclient/HttpConnectionFactory;

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcz/msebera/android/httpclient/ConnectionReuseStrategy;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->connStrategy:Lcz/msebera/android/httpclient/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setExceptionLogger(Lcz/msebera/android/httpclient/ExceptionLogger;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->exceptionLogger:Lcz/msebera/android/httpclient/ExceptionLogger;

    return-object p0
.end method

.method public final setExpectationVerifier(Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->expectationVerifier:Lcz/msebera/android/httpclient/protocol/HttpExpectationVerifier;

    return-object p0
.end method

.method public final setHandlerMapper(Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->handlerMapper:Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerMapper;

    return-object p0
.end method

.method public final setHttpProcessor(Lcz/msebera/android/httpclient/protocol/HttpProcessor;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->httpProcessor:Lcz/msebera/android/httpclient/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setListenerPort(I)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->listenerPort:I

    return-object p0
.end method

.method public final setLocalAddress(Ljava/net/InetAddress;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->localAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public final setResponseFactory(Lcz/msebera/android/httpclient/HttpResponseFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->responseFactory:Lcz/msebera/android/httpclient/HttpResponseFactory;

    return-object p0
.end method

.method public final setServerInfo(Ljava/lang/String;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final setServerSocketFactory(Ljavax/net/ServerSocketFactory;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->serverSocketFactory:Ljavax/net/ServerSocketFactory;

    return-object p0
.end method

.method public final setSocketConfig(Lcz/msebera/android/httpclient/config/SocketConfig;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->socketConfig:Lcz/msebera/android/httpclient/config/SocketConfig;

    return-object p0
.end method

.method public final setSslContext(Ljavax/net/ssl/SSLContext;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final setSslSetupHandler(Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;)Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/bootstrap/ServerBootstrap;->sslSetupHandler:Lcz/msebera/android/httpclient/impl/bootstrap/SSLServerSetupHandler;

    return-object p0
.end method
