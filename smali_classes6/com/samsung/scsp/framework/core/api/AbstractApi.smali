.class public abstract Lcom/samsung/scsp/framework/core/api/AbstractApi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/api/Api;


# instance fields
.field private final DELETE_JOBS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final DOWNLOAD_JOBS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final UPDATE_JOBS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final UPLOAD_JOBS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->UPLOAD_JOBS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->DOWNLOAD_JOBS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->UPDATE_JOBS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->DELETE_JOBS:Ljava/util/Map;

    return-void
.end method

.method private execute(Lcom/samsung/scsp/framework/core/api/Job;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/Job;->execute(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method


# virtual methods
.method public addDelete(Lcom/samsung/scsp/framework/core/api/AbstractJob;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->DELETE_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractJob;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDownload(Lcom/samsung/scsp/framework/core/api/AbstractJob;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->DOWNLOAD_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractJob;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUpdate(Lcom/samsung/scsp/framework/core/api/AbstractJob;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->UPDATE_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractJob;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUpload(Lcom/samsung/scsp/framework/core/api/AbstractJob;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->UPLOAD_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractJob;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final delete(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->DELETE_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/Job;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApi;->execute(Lcom/samsung/scsp/framework/core/api/Job;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method

.method public final download(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->DOWNLOAD_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/Job;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApi;->execute(Lcom/samsung/scsp/framework/core/api/Job;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method

.method public final update(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->UPDATE_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/Job;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApi;->execute(Lcom/samsung/scsp/framework/core/api/Job;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method

.method public final upload(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApi;->UPLOAD_JOBS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/Job;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApi;->execute(Lcom/samsung/scsp/framework/core/api/Job;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method
