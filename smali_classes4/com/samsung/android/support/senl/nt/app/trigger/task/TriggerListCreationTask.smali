.class public Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;
.super Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask<",
        "Landroid/content/ClipData;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
        ">;",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TriggerListCreationTask"


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;

.field private mCallerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;ILcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;->mCallerId:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/content/ClipData;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ClipData;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "TriggerListCreationTask-thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    aget-object v6, p1, v0

    invoke-virtual {v6, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".sdoc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".sdocx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;->mCallerId:I

    invoke-direct {v6, v5, v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v6, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;->doInBackground([Landroid/content/ClipData;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->dismissDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;->onPostExecute(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->release()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/task/AbsTriggerTask;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showImportProgressDialog()Z

    return-void
.end method
