.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CONTENT_QUALITY:I = 0x32

.field private static final CONTENT_RATIO:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "GraphTask"


# instance fields
.field private mCallback:Lh1/a;

.field private final mContext:Landroid/content/Context;

.field private final mNotebookId:Ljava/lang/String;

.field private mResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenWidth:I

.field private final mSectionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILh1/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mNotebookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mSectionId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mScreenWidth:I

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mCallback:Lh1/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mResult:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->doInBackground([Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/ArrayList;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "GraphTask"

    const-string v0, "doInBackground."

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item count : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    new-instance v11, Lj1/a;

    iget-object v5, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->e()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mScreenWidth:I

    invoke-static {v4, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->createPageThumbnailCacheDirectory(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mScreenWidth:I

    const/16 v9, 0x32

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lj1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIF)V

    invoke-virtual {v11}, Lj1/a;->l()Ljava/util/List;

    move-result-object v16

    new-instance v4, Lj1/f;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mSectionId:Ljava/lang/String;

    invoke-virtual {v11}, Lj1/a;->g()Ljava/lang/String;

    move-result-object v15

    iget v5, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mScreenWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object v12, v4

    move/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lj1/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v4}, Lj1/f;->b()V

    iget-object v4, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mResult:Ljava/util/List;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mResult:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->onCancelled(Ljava/util/List;)V

    return-void
.end method

.method public onCancelled(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mCallback:Lh1/a;

    invoke-interface {v0, p1}, Lh1/a;->onCancel(Ljava/util/List;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/GraphTask;->mCallback:Lh1/a;

    invoke-interface {v0, p1}, Lh1/a;->onResult(Ljava/util/List;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
