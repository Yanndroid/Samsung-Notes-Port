.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;

.field public final synthetic val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IPresenter;->onDismiss()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/Dialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
