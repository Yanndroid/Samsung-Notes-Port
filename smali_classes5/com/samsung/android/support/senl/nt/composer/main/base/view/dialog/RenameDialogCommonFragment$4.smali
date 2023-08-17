.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getAlertDialogShowListener(Landroid/os/Bundle;)Landroid/content/DialogInterface$OnShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

.field public final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onShow()# Presenter is null. return"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mInputText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v4, "error_enabled"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mInputText:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;->isExistName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getExistNameError()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->val$savedInstanceState:Landroid/os/Bundle;

    const-string v0, "positive_button_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mInputText:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getInvalidNameError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_8
    move p1, v2

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;->isExistName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$4;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
