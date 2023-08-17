.class Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/common/SnapControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->internalSnapRestart(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

.field public final synthetic val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;Z)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompleted, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CT/CoeditService"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CT/CoeditService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;->onRelease()V

    :cond_0
    return-void
.end method

.method public onStartOfflineMode(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartOfflineMode, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CT/CoeditService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$3;->val$snapCallback:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;->onStartOfflineMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
