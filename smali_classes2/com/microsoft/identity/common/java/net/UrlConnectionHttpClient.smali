.class public Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
.super Lcom/microsoft/identity/common/java/net/AbstractHttpClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_CONNECT_TIME_OUT_MS:I = 0x7530

.field public static final DEFAULT_READ_TIME_OUT_MS:I = 0x7530

.field public static final DEFAULT_STREAM_BUFFER_SIZE_BYTE:I = 0x400

.field public static final RETRY_TIME_WAITING_PERIOD_MSEC:I = 0x3e8

.field private static final TAG:Ljava/lang/Object;

.field private static final transient defaultReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final connectTimeoutMs:I

.field private final connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeoutMs:I

.field private final readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

.field private final streamBufferSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->TAG:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->defaultReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/net/IRetryPolicy;IIILcom/microsoft/identity/common/java/util/ported/Supplier;Lcom/microsoft/identity/common/java/util/ported/Supplier;Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;III",
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/net/AbstractHttpClient;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    iput p2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->streamBufferSize:I

    iput p3, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMs:I

    iput p4, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMs:I

    iput-object p5, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    iput-object p6, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    iput-object p7, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/java/net/IRetryPolicy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/microsoft/identity/common/java/util/ported/Supplier;Lcom/microsoft/identity/common/java/util/ported/Supplier;Ljava/util/List;Ljavax/net/ssl/SSLContext;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/net/IRetryPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/microsoft/identity/common/java/util/ported/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/microsoft/identity/common/java/util/ported/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljavax/net/ssl/SSLContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/net/ssl/SSLContext;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/net/AbstractHttpClient;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/microsoft/identity/common/java/net/NoRetryPolicy;

    invoke-direct {p1}, Lcom/microsoft/identity/common/java/net/NoRetryPolicy;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x400

    :goto_1
    iput p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->streamBufferSize:I

    const/16 p1, 0x7530

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    iput p2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMs:I

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_3
    iput p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMs:I

    iput-object p5, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    iput-object p6, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    if-eqz p7, :cond_4

    goto :goto_3

    :cond_4
    sget-object p7, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;->SUPPORTED_SSL_PROTOCOLS:Ljava/util/List;

    :goto_3
    new-instance p1, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    if-nez p8, :cond_5

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {p1, p2, p7}, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/util/List;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    invoke-direct {p1, p2, p7}, Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/util/List;)V

    :goto_4
    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/java/net/IRetryPolicy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/microsoft/identity/common/java/util/ported/Supplier;Lcom/microsoft/identity/common/java/util/ported/Supplier;Ljava/util/List;Ljavax/net/ssl/SSLContext;Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;-><init>(Lcom/microsoft/identity/common/java/net/IRetryPolicy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/microsoft/identity/common/java/util/ported/Supplier;Lcom/microsoft/identity/common/java/util/ported/Supplier;Ljava/util/List;Ljavax/net/ssl/SSLContext;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/net/HttpResponse;)V
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->recordHttpTelemetryEventEnd(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;Lcom/microsoft/identity/common/java/net/HttpRequest;Lcom/microsoft/identity/common/java/util/ported/Consumer;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->executeHttpSend(Lcom/microsoft/identity/common/java/net/HttpRequest;Lcom/microsoft/identity/common/java/util/ported/Consumer;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static constructHttpRequest(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/Map;[B)Lcom/microsoft/identity/common/java/net/HttpRequest;
    .locals 6
    .param p0    # Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/net/URL;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/microsoft/identity/common/java/net/HttpRequest;"
        }
    .end annotation

    const-string v0, "httpMethod is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestUrl is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestHeaders is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->PATCH:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-HTTP-Method-Override"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    new-instance p2, Lcom/microsoft/identity/common/java/net/HttpRequest;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/identity/common/java/net/HttpRequest;-><init>(Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;[BLjava/lang/String;)V

    return-object p2
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lcom/microsoft/identity/common/java/AuthenticationConstants;->CHARSET_UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->streamBufferSize:I

    new-array v1, v1, [C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    throw v0
.end method

.method private executeHttpSend(Lcom/microsoft/identity/common/java/net/HttpRequest;Lcom/microsoft/identity/common/java/util/ported/Consumer;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/HttpRequest;",
            "Lcom/microsoft/identity/common/java/util/ported/Consumer<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;)",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->setupConnection(Lcom/microsoft/identity/common/java/net/HttpRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestContent()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sendRequest(Ljava/net/HttpURLConnection;[BLjava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_2

    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    if-nez v1, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v5, Lcom/microsoft/identity/common/java/net/HttpResponse;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v5, v3, v2, v4, v0}, Lcom/microsoft/identity/common/java/net/HttpResponse;-><init>(Ljava/util/Date;ILjava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {p2, v5}, Lcom/microsoft/identity/common/java/util/ported/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-interface {p2, p1}, Lcom/microsoft/identity/common/java/util/ported/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getConnectTimeoutMs()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->connectTimeoutMs:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/util/ported/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static declared-synchronized getDefaultInstance()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
    .locals 6

    const-class v0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->defaultReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->builder()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->builder()Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->number(I)Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->extensionFactor(I)Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    new-instance v5, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$3;

    invoke-direct {v5}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$3;-><init>()V

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isAcceptable(Lcom/microsoft/identity/common/java/util/ported/Function;)Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->initialDelay(I)Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    new-instance v5, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$2;

    invoke-direct {v5}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$2;-><init>()V

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryable(Lcom/microsoft/identity/common/java/util/ported/Function;)Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    new-instance v5, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$1;

    invoke-direct {v5}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$1;-><init>()V

    invoke-virtual {v4, v5}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->isRetryableException(Lcom/microsoft/identity/common/java/util/ported/Function;)Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$StatusCodeAndExceptionRetryBuilder;->build()Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->retryPolicy(Lcom/microsoft/identity/common/java/net/IRetryPolicy;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->build()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getReadTimeoutMs()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->readTimeoutMs:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/microsoft/identity/common/java/util/ported/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static isRetryableError(I)Z
    .locals 1

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static recordHttpTelemetryEventEnd(Lcom/microsoft/identity/common/java/net/HttpResponse;)V
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/HttpEndEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/HttpEndEvent;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/net/HttpResponse;->getStatusCode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/telemetry/events/HttpEndEvent;->putStatusCode(I)Lcom/microsoft/identity/common/java/telemetry/events/HttpEndEvent;

    :cond_0
    invoke-static {v0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    return-void
.end method

.method private static recordHttpTelemetryEventStart(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/net/URL;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "requestMethod is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestUrl is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;->putMethod(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;->putPath(Ljava/net/URL;)Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;->putRequestIdHeader(Ljava/lang/String;)Lcom/microsoft/identity/common/java/telemetry/events/HttpStartEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/telemetry/Telemetry;->emit(Lcom/microsoft/identity/common/java/telemetry/events/BaseEvent;)V

    return-void
.end method

.method private static safeCloseStream(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":safeCloseStream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encountered IO exception when trying to close the stream"

    invoke-static {v0, v1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static sendRequest(Ljava/net/HttpURLConnection;[BLjava/lang/String;)V
    .locals 1
    .param p0    # Ljava/net/HttpURLConnection;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "connection is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p2}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->safeCloseStream(Ljava/io/Closeable;)V

    throw p0
.end method

.method private setupConnection(Lcom/microsoft/identity/common/java/net/HttpRequest;)Ljava/net/HttpURLConnection;
    .locals 4

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/net/HttpUrlConnectionFactory;->createHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->sslSocketFactory:Lcom/microsoft/identity/common/java/net/SSLSocketFactoryWrapper;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ":setupConnection"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->TAG:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Making a request for non-https URL."

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->TAG:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gets a request from an unexpected protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/net/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getConnectTimeoutMs()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->getReadTimeoutMs()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to initiate a HTTPS request, but didn\'t get back HttpsURLConnection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public method(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/Map;[B)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/URL;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;"
        }
    .end annotation

    const-string v0, "httpMethod is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestUrl is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestHeaders is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client-request-id"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->recordHttpTelemetryEventStart(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->constructHttpRequest(Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;Ljava/net/URL;Ljava/util/Map;[B)Lcom/microsoft/identity/common/java/net/HttpRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    new-instance p3, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;

    invoke-direct {p3, p0, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;-><init>(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;Lcom/microsoft/identity/common/java/net/HttpRequest;)V

    invoke-interface {p2, p3}, Lcom/microsoft/identity/common/java/net/IRetryPolicy;->attempt(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/net/HttpResponse;

    return-object p1
.end method
