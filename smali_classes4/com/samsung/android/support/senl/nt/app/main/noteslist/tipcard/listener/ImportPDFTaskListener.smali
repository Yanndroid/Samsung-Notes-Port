.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportTaskListener"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V
    .locals 0
    .param p2    # Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    return-void
.end method

.method private clearImportPDFTaskProgress()V
    .locals 2

    const-string v0, "ImportTaskListener"

    const-string v1, "clearImportPDFTaskProgress# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->clearImportPDFTaskProgress()V

    return-void
.end method


# virtual methods
.method public onPostExecute()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;->clearImportPDFTaskProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;->removeTipCard(I)V

    return-void
.end method

.method public onTaskProgressed(III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;->setProgress(III)V

    return-void
.end method

.method public setOnCancelled()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->setOnCancelled()V

    const-string v0, "ImportTaskListener"

    const-string v1, "setOnCancelled# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;->clearImportPDFTaskProgress()V

    return-void
.end method

.method public setProgress(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->setProgress(III)V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setImportPDFTaskProgress(III)V

    return-void
.end method
