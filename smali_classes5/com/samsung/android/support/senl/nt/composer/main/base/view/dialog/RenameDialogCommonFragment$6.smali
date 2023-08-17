.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->getLengthFilter()Landroid/text/InputFilter$LengthFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11

    move-object v0, p0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$RenameType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$RenameType;->FILE_NAME:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$RenameType;

    if-ne v2, v3, :cond_0

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RenameDialogCommonFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v1
.end method
