.class Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/CoeditController$RestoreContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditControllerRestoreContractImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreDownloadStroke(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditManager()Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->applyStrokeBinary(Ljava/lang/String;[B)V

    return-void
.end method

.method public restoreUndownloadStroke(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter$CoeditControllerRestoreContractImpl;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;->a(Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditControlPresenter;)Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/ICoeditHandlerPresenterListener;->getCoeditGrpcPresenter()Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/presenter/CoeditGrpcPresenter;->restoreUndownloadStroke(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
