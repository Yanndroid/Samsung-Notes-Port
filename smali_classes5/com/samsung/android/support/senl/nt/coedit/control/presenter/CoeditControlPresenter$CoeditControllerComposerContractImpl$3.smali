.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->onDeviceListUpdated(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

.field public final synthetic val$deviceList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;->val$deviceList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;->this$1:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl$3;->val$deviceList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerComposerContractImpl;Ljava/util/List;)V

    return-void
.end method
