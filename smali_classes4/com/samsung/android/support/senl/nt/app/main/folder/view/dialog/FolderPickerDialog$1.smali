.class Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditDialogDismiss()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditDialogResult# folderName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderPickerDialog"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->getFolderDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getFoldersDisplayName(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->isExistFolderName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->folder_already_in_use:I

    invoke-static {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->i(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->addFolderData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->f(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;)Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderModel;->setSelectedUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;->j(Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;I)V

    return-void
.end method
