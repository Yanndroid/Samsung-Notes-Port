.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportSDocTaskListener"


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

.method private clearImportSamsungNoteTaskData()V
    .locals 2

    const-string v0, "ImportSDocTaskListener"

    const-string v1, "clearImportSamsungNoteTaskData# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->clearImportSamsungNoteTaskProgress()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onError# errorCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " message: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImportSDocTaskListener"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(IILjava/util/Map;I)V
    .locals 7
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFinish# total: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " errorCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " successCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ImportSDocTaskListener"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->clearImportSamsungNoteTaskData()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;ILandroid/app/Activity;II)V

    invoke-virtual {p3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onProgress(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgress# total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportSDocTaskListener"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->setProgress(III)V

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnsupportedVersionError(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "ImportSDocTaskListener"

    const-string p2, "onUnsupportedVersionError"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;->onUnsupportedVersionError()Z

    move-result p1

    return p1
.end method

.method public setOnCancelled()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->setOnCancelled()V

    const-string v0, "ImportSDocTaskListener"

    const-string v1, "setOnCancelled# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;->clearImportSamsungNoteTaskData()V

    return-void
.end method

.method public setProgress(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->setProgress(III)V

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setImportSamsungNoteTaskProgress(III)V

    return-void
.end method
