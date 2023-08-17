.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/dialog/IConfirmDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->g(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;->onConfirm(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->k(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;Ljava/lang/String;)V

    return-void
.end method
