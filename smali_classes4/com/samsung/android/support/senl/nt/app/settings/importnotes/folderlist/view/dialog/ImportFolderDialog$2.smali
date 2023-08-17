.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/settings/importnotes/common/dialog/ImportDialogResultListener$DuplicateFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "ST$ImportFolderDialog"

    const-string v1, "onDuplicateFileCancel# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->removeSelectedItem()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialogContract;->activityFinish()V

    return-void
.end method

.method public onRename(Z)V
    .locals 2

    const-string v0, "ST$ImportFolderDialog"

    const-string v1, "onDuplicateFileRename# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onRenameDuplicateFile(Z)V

    return-void
.end method

.method public onReplace(Z)V
    .locals 2

    const-string v0, "ST$ImportFolderDialog"

    const-string v1, "onDuplicateFileReplace# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onReplaceDuplicateFile(Z)V

    return-void
.end method

.method public onSkip(Z)V
    .locals 2

    const-string v0, "ST$ImportFolderDialog"

    const-string v1, "onDuplicateFileSkip# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;->b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/view/dialog/ImportFolderDialog;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenter;->onSkipDuplicateFile(Z)V

    return-void
.end method
