.class Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$IReleasePostAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->releaseHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

.field public final synthetic val$callback:Ljava/lang/Runnable;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;->val$callback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;->val$callback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;->val$uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/data/DocumentUpdateManager;->onCoeditDocumentClosed(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$6;->this$0:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->c(Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)V

    return-void
.end method
