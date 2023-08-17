.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/DirectWriteSettingDialogFragment;)V

    :cond_0
    return-void
.end method
