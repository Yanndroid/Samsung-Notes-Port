.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->executeTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

.field public final synthetic val$infoPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->val$infoPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;->showErrorToast()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->val$infoPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/FrontTaskChecker;->isFrontTask(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->showQuickNoteDialog()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resultValuesCallback# WebPageSuggestionInfo task is not front"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;->showErrorToast()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$WaitingAction$2;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskQuickNote$ResultValues;)V

    return-void
.end method
