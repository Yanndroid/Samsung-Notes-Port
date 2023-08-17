.class public abstract Lcom/samsung/scsp/framework/core/api/AbstractJob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/api/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;
    }
.end annotation


# instance fields
.field private final apiPath:Ljava/lang/String;

.field private final errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

.field private final method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->apiPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    new-instance p1, Lcom/samsung/scsp/framework/core/DefaultErrorListener;

    invoke-direct {p1, p2}, Lcom/samsung/scsp/framework/core/DefaultErrorListener;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    return-void
.end method


# virtual methods
.method public final declared-synchronized consume(Ljava/io/ByteArrayOutputStream;)Lcom/samsung/scsp/framework/core/api/Response;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/scsp/framework/core/api/Response;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/framework/core/api/Response;-><init>(Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized consume(Ljava/io/InputStream;)Lcom/samsung/scsp/framework/core/api/Response;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/scsp/framework/core/api/Response;

    invoke-direct {v0, p1}, Lcom/samsung/scsp/framework/core/api/Response;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final execute(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 3

    iget-object v0, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object v0, v0, Lcom/samsung/scsp/framework/core/SContextHolder;->network:Lcom/samsung/scsp/framework/core/network/Network;

    invoke-interface {p0, p1, p2}, Lcom/samsung/scsp/framework/core/api/Job;->createRequest(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)Lcom/samsung/scsp/framework/core/network/HttpRequest;

    move-result-object p1

    sget-object p2, Lcom/samsung/scsp/framework/core/api/AbstractJob$1;->$SwitchMap$com$samsung$scsp$framework$core$network$HttpRequest$Method:[I

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getMethod()Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/Network;->head(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/Network;->patch(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/Network;->delete(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/Network;->get(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/Network;->put(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/scsp/framework/core/network/Network;->post(Lcom/samsung/scsp/framework/core/network/HttpRequest;Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;Lcom/samsung/scsp/framework/core/network/Network$StreamListener;Lcom/samsung/scsp/framework/core/network/Network$TransferListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApiUrl(Lcom/samsung/scsp/framework/core/SContext;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/SContext;->getAccountInfoSupplier()Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/identity/AccountInfoSupplier;->getAppId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->apiPath:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/samsung/scsp/framework/core/ers/ScspErs;->getBaseUrlOfPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->apiPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getErrorListener()Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->errorListener:Lcom/samsung/scsp/framework/core/network/Network$ErrorListener;

    return-object v0
.end method

.method public final getHttpRequestBuilder(Lcom/samsung/scsp/framework/core/api/ApiContext;Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;
    .locals 2

    new-instance v0, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->scontextHolder:Lcom/samsung/scsp/framework/core/SContextHolder;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;-><init>(Lcom/samsung/scsp/framework/core/SContextHolder;Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;->name(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequestImpl$HttpRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferListener()Lcom/samsung/scsp/framework/core/network/Network$TransferListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
