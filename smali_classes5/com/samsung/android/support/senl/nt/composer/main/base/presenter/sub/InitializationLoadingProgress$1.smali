.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/InitializationLoadingProgress;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->showProgress(II)V

    return-void
.end method
