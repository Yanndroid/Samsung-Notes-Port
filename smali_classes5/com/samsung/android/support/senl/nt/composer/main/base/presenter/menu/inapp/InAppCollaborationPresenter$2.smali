.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->setIsInAppCollaborationMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

.field public final synthetic val$isInAppCollaborationMode:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->val$isInAppCollaborationMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInAppCollaborationMode# isInAppCollaborationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->val$isInAppCollaborationMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InAppCollaborationPresenter"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->val$isInAppCollaborationMode:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->onInAppCollaborationModeChanged(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->val$isInAppCollaborationMode:Z

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;Z)V

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->val$isInAppCollaborationMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;->hide(Z)V

    const-string v0, "672"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/inapp/InAppCollaborationPresenter$2;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
