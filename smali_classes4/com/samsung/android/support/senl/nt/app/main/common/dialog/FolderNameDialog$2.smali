.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->onShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->checkDialogStatus(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    iget-object p4, p4, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->EDIT_BOX_TEXT:Ljava/lang/CharSequence;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->EDITING:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
