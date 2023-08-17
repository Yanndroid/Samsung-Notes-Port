.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCheckedData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->clearCheckedData()V

    return-void
.end method

.method public removeExportPdfDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->removeExportPdfDialog()V

    return-void
.end method

.method public removeProgressCircle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->removeProgressCircle()V

    return-void
.end method

.method public removeSaveAsProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->removeSaveAsProgressDialog()V

    return-void
.end method

.method public showExportPdfDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showExportPdfDialog(I)V

    return-void
.end method

.method public showProgressCircle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showProgressCircle()V

    return-void
.end method

.method public showSaveAsProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showSaveAsProgressDialog()V

    return-void
.end method

.method public updateExportPdfDialogNoteName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->updateExportPdfDialogNoteName(Ljava/lang/String;)V

    return-void
.end method

.method public updateExportPdfDialogProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->updateExportPdfDialogProgress(II)V

    return-void
.end method
