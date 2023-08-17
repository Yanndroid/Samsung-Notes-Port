.class public Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlConnectionHttpClientBuilder"
.end annotation


# instance fields
.field private connectTimeoutMs:Ljava/lang/Integer;

.field private connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeoutMs:Ljava/lang/Integer;

.field private readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private streamBufferSize:Ljava/lang/Integer;

.field private supportedSslProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;
    .locals 11

    new-instance v10, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->streamBufferSize:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->connectTimeoutMs:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->readTimeoutMs:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    iget-object v6, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    iget-object v7, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->supportedSslProtocols:Ljava/util/List;

    iget-object v8, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;-><init>(Lcom/microsoft/identity/common/java/net/IRetryPolicy;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/microsoft/identity/common/java/util/ported/Supplier;Lcom/microsoft/identity/common/java/util/ported/Supplier;Ljava/util/List;Ljavax/net/ssl/SSLContext;Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$1;)V

    return-object v10
.end method

.method public connectTimeoutMs(Ljava/lang/Integer;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->connectTimeoutMs:Ljava/lang/Integer;

    return-object p0
.end method

.method public connectTimeoutMsSupplier(Lcom/microsoft/identity/common/java/util/ported/Supplier;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/util/ported/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    return-object p0
.end method

.method public readTimeoutMs(Ljava/lang/Integer;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->readTimeoutMs:Ljava/lang/Integer;

    return-object p0
.end method

.method public readTimeoutMsSupplier(Lcom/microsoft/identity/common/java/util/ported/Supplier;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/util/ported/Supplier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/util/ported/Supplier<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    return-object p0
.end method

.method public retryPolicy(Lcom/microsoft/identity/common/java/net/IRetryPolicy;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/net/IRetryPolicy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/net/IRetryPolicy<",
            "Lcom/microsoft/identity/common/java/net/HttpResponse;",
            ">;)",
            "Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    return-object p0
.end method

.method public sslContext(Ljavax/net/ssl/SSLContext;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Ljavax/net/ssl/SSLContext;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public streamBufferSize(Ljava/lang/Integer;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->streamBufferSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public supportedSslProtocols(Ljava/util/List;)Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->supportedSslProtocols:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UrlConnectionHttpClient.UrlConnectionHttpClientBuilder(retryPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->retryPolicy:Lcom/microsoft/identity/common/java/net/IRetryPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamBufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->streamBufferSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->connectTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->readTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimeoutMsSupplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->connectTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeoutMsSupplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->readTimeoutMsSupplier:Lcom/microsoft/identity/common/java/util/ported/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedSslProtocols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->supportedSslProtocols:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sslContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$UrlConnectionHttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
