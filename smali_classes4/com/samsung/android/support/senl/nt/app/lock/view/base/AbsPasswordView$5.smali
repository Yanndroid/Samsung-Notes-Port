.class Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->f(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->isValidPassword(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->updateDefaultGuideText()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v0, 0x10

    if-le p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mPasswordInputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$5;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->mDoneItem:Landroid/view/MenuItem;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->setMenuItemEnabled(Landroid/view/MenuItem;Z)V

    :goto_0
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
