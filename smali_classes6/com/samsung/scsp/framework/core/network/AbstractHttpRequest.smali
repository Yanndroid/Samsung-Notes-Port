.class public abstract Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/HttpRequest;


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "NO_BOUNDARY"

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "NO_CONTENT_DISPOSITION"


# instance fields
.field public exceptErrorHandle:Z

.field public final headerKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final headerValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public name:Ljava/lang/String;

.field public networkStatusListener:Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

.field public progressListener:Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

.field public responseListener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

.field public supportChunkedStreaming:Z

.field public timeout:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->headerKeyList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->headerValueList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    const-string v0, "NO_BOUNDARY"

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getContentDisposition(I)Ljava/lang/String;
    .locals 0

    const-string p1, "NO_CONTENT_DISPOSITION"

    return-object p1
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->headerKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->headerKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->headerValueList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMethod()Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->method:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkStatusListener()Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->networkStatusListener:Lcom/samsung/scsp/framework/core/listeners/NetworkStatusListener;

    return-object v0
.end method

.method public getProgressListener()Lcom/samsung/scsp/framework/core/listeners/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->progressListener:Lcom/samsung/scsp/framework/core/listeners/ProgressListener;

    return-object v0
.end method

.method public getResponseListener()Lcom/samsung/scsp/framework/core/listeners/ResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->responseListener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->timeout:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/network/AbstractHttpRequest;->url:Ljava/lang/String;

    return-void
.end method
