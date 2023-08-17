.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper$IPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;->build()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/PdfImportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreImportMultiPdfDialog(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->restoreImportMultiPdfDialog(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;)V

    return-void
.end method

.method public setImportPDFTaskListenerForTipCard(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImportPDFTaskListenerForTipCard# taskTotalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataMapper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mTipCardHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setImportPDFTaskListenerForTipCard(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;I)V

    return-void
.end method

.method public setToolType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->setToolType(I)V

    return-void
.end method

.method public showImportMultiPdfDialog(Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mDialogManager:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DialogManager;->showImportMultiPdfDialog(Ljava/lang/String;ILjava/util/List;Lcom/samsung/android/support/senl/nt/app/main/common/dialog/ImportMultiplePdfDialogFragment$Contract;)V

    return-void
.end method
