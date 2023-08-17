.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getTextWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;->allowableDefaultName()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/RenameDialogCommonPresenter;->isExistName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getExistNameError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getExistNameError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->j()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged# MaximumText:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    move v4, v2

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {p1, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;ZZ)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
