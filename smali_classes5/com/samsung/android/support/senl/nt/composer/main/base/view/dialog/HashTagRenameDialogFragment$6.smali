.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->initEditText(Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/HashTagHelper;->removeExceptLetterOrDigit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p4

    sget p5, Lcom/samsung/android/support/senl/nt/composer/R$string;->ss_maximum_number_of_characters_exceeded:I

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;

    invoke-static {p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/HashTagRenameDialogFragment;)I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p3, p5

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p1
.end method
