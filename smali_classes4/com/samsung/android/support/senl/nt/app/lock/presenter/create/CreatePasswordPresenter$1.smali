.class Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/model/password/PasswordModel$OnSaveResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->lambda$savePassword$0(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "savePassword : onFailure"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->ignoreInputEvent(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "savePassword : onSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->ignoreInputEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->isUseBiometricChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->setBiometricsEnabled()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;->updatePasswordOwnerGuid()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lx2/b;->h(J)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->r()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->b(Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;)Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/ICreateContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/password/IBasePasswordContract$IView;->resetOldBiometricBlockingEndTime()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/create/CreatePasswordPresenter;->finishSuccess()V

    return-void
.end method
