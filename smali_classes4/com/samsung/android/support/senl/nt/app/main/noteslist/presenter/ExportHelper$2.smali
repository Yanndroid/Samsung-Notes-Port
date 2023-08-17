.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/ShareTask$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeExportPdfDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->removeExportPdfDialog()V

    return-void
.end method

.method public removeProgressCircle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->removeProgressCircle()V

    return-void
.end method

.method public removeSaveAsProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->removeSaveAsProgressDialog()V

    return-void
.end method

.method public showExportPdfDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->showExportPdfDialog(I)V

    return-void
.end method

.method public showProgressCircle()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->showProgressCircle()V

    return-void
.end method

.method public showSaveAsProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->showSaveAsProgressDialog()V

    return-void
.end method

.method public updateExportPdfDialogNoteName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->updateExportPdfDialogNoteName(Ljava/lang/String;)V

    return-void
.end method

.method public updateExportPdfDialogProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ExportHelper$IPresenter;->updateExportPdfDialogProgress(II)V

    return-void
.end method
