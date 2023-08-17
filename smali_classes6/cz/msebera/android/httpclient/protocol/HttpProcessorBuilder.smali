.class public Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
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

.method public static create()Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;-><init>()V

    return-object v0
.end method

.method private getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object v0
.end method

.method private getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcz/msebera/android/httpclient/protocol/ChainBuilder<",
            "Lcz/msebera/android/httpclient/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAll([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAllLast([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAll([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->addAllLast([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAllFirst([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllFirst([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllFirst([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllLast([Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public varargs addAllLast([Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addAllLast([Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addFirst(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addFirst(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addFirst(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addLast(Lcz/msebera/android/httpclient/HttpRequestInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getRequestChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public addLast(Lcz/msebera/android/httpclient/HttpResponseInterceptor;)Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->getResponseChainBuilder()Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->addLast(Ljava/lang/Object;)Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    return-object p0
.end method

.method public build()Lcz/msebera/android/httpclient/protocol/HttpProcessor;
    .locals 4

    new-instance v0, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;

    iget-object v1, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->requestChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/protocol/HttpProcessorBuilder;->responseChainBuilder:Lcz/msebera/android/httpclient/protocol/ChainBuilder;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/protocol/ChainBuilder;->build()Ljava/util/LinkedList;

    move-result-object v2

    :cond_1
    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/protocol/ImmutableHttpProcessor;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
