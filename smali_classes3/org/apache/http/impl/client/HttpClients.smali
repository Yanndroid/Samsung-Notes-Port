.class public Lorg/apache/http/impl/client/HttpClients;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createMinimal()Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 2

    new-instance v0, Lorg/apache/http/impl/client/MinimalHttpClient;

    new-instance v1, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/MinimalHttpClient;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;)V

    return-object v0
.end method

.method public static createMinimal(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/MinimalHttpClient;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/MinimalHttpClient;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;)V

    return-object v0
.end method

.method public static createSystem()Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->useSystemProperties()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    return-object v0
.end method
