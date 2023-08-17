.class public abstract Lcom/samsung/scsp/framework/core/api/AbstractApiControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/api/ApiControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/framework/core/api/AbstractApiControl$DeleteRequest;,
        Lcom/samsung/scsp/framework/core/api/AbstractApiControl$UpdateRequest;,
        Lcom/samsung/scsp/framework/core/api/AbstractApiControl$ReadRequest;,
        Lcom/samsung/scsp/framework/core/api/AbstractApiControl$CreateRequest;,
        Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;,
        Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;
    }
.end annotation


# instance fields
.field private final CREATE_REQUESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final DELETE_REQUESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final READ_REQUESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final UPDATE_REQUESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;",
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

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->CREATE_REQUESTS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->READ_REQUESTS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->UPDATE_REQUESTS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->DELETE_REQUESTS:Ljava/util/Map;

    return-void
.end method

.method private execute(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;->execute(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$CreateRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->CREATE_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$DeleteRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->DELETE_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$ReadRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->READ_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public add(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$UpdateRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->UPDATE_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final create(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->CREATE_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->execute(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method

.method public final delete(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->DELETE_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->execute(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method

.method public abstract getApi()Lcom/samsung/scsp/framework/core/api/Api;
.end method

.method public final read(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->READ_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->execute(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method

.method public final update(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->UPDATE_REQUESTS:Ljava/util/Map;

    iget-object v1, p1, Lcom/samsung/scsp/framework/core/api/ApiContext;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->execute(Lcom/samsung/scsp/framework/core/api/AbstractApiControl$Request;Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method
