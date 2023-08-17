.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;->onReceived(Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestServerNoteInfo # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)V

    return-void
.end method
