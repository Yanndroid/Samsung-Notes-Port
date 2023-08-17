.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/CancelVoiceConfirmDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;->stopRecording()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "709"

    const-string p2, "7093"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
