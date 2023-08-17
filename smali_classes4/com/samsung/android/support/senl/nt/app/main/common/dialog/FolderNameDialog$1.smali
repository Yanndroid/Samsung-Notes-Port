.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderMarkColorPalette$OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;->e(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/FolderNameDialog;

    iget v0, p1, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->mPositiveCheckErrorType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->positiveButtonEnable(Z)V

    return-void
.end method
