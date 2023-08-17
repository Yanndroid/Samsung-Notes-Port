.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    const-string p2, "cancel#"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;->cancel()V

    :cond_0
    return-void
.end method
