.class public Lcom/samsung/scsp/framework/core/api/AbstractApiControl$DeleteRequest;
.super Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/api/AbstractApiControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteRequest"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/scsp/framework/core/api/AbstractApiControl;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/api/AbstractApiControl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$DeleteRequest;->this$0:Lcom/samsung/scsp/framework/core/api/AbstractApiControl;

    invoke-direct {p0, p2}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$AbstractRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractApiControl$DeleteRequest;->this$0:Lcom/samsung/scsp/framework/core/api/AbstractApiControl;

    invoke-virtual {v0}, Lcom/samsung/scsp/framework/core/api/AbstractApiControl;->getApi()Lcom/samsung/scsp/framework/core/api/Api;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/Api;->delete(Lcom/samsung/scsp/framework/core/api/ApiContext;Lcom/samsung/scsp/framework/core/listeners/Listeners;)V

    return-void
.end method
