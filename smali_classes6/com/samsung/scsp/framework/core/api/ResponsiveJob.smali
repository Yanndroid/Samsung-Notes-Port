.class public abstract Lcom/samsung/scsp/framework/core/api/ResponsiveJob;
.super Lcom/samsung/scsp/framework/core/api/AbstractJob;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$StreamListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/scsp/framework/core/api/AbstractJob;",
        "Lcom/samsung/scsp/framework/core/network/Network$StreamListener<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final responseClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/AbstractJob;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->responseClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getStreamListener()Lcom/samsung/scsp/framework/core/network/Network$StreamListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/scsp/framework/core/network/Network$StreamListener<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public handleStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->responseClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;

    iget-object v1, p0, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->TAG:Ljava/lang/String;

    invoke-interface {p1}, Lcom/samsung/scsp/framework/core/network/HttpRequest;->getResponseListener()Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->responseClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;-><init>(Lcom/samsung/scsp/framework/core/api/AbstractJob;Ljava/lang/String;Lcom/samsung/scsp/framework/core/listeners/ResponseListener;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method

.method public onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->handleStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method

.method public bridge synthetic onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/ResponsiveJob;->onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
