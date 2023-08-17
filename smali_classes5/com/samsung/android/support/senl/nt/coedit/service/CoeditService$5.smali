.class Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

.field public final synthetic val$spaceId:Ljava/lang/String;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$uuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompleted. Success to start snap. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CT/CoeditService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-virtual {p2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$uuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$spaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->b(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {p2, v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/service/task/SnapUploadTask;->onSnapUploadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->b(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError. Failed to start snap. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CT/CoeditService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->b(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->val$callback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;->onRelease()V

    return-void
.end method

.method public onStartOfflineMode(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->b(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5$3;-><init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
