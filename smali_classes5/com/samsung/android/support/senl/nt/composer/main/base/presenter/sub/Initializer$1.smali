.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->handleActionSend(Landroid/content/Intent;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

.field public final synthetic val$entryAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->val$entryAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->val$entryAction:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/EntryAction;->executeTaskActionSend(Landroid/content/Intent;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;ZZ)V

    return-void
.end method
