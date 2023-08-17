.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/VoiceDataDeleteConfirmDialogFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/VoiceDataDeleteConfirmDialogPresenter;->delete()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
