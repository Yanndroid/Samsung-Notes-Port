.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;
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

.field private static final CONTENT_RATIO:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GraphTask"


# instance fields
.field private mCallback:Lh1/a;

.field private final mContext:Landroid/content/Context;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;ILh1/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mScreenWidth:I

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mCallback:Lh1/a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mResult:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->doInBackground([Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/ArrayList;)Ljava/util/List;
    .locals 27
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

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->k()Z

    move-result v0

    if-eqz v0, :cond_5

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

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->b()J

    move-result-wide v11

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->d()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->f()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-result-object v9

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->g()J

    move-result-wide v16

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", connectedNotesId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    if-ne v9, v4, :cond_1

    new-instance v3, Li1/g;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, v15, v4}, Li1/g;->e(Ljava/lang/String;I)V

    new-instance v3, Lj1/c;

    invoke-direct {v3, v10, v15}, Lj1/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lj1/c;->c()V

    move-object v6, v15

    goto/16 :goto_3

    :cond_1
    new-instance v4, Lj1/a;

    iget-object v5, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->e()Ljava/lang/String;

    move-result-object v20

    iget-object v6, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->h()Ljava/lang/String;

    move-result-object v7

    iget v8, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mScreenWidth:I

    invoke-static {v6, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->createPageThumbnailCacheDirectory(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    iget v6, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mScreenWidth:I

    const/16 v23, 0x32

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x14

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v22, v6

    invoke-direct/range {v18 .. v26}, Lj1/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIFZI)V

    invoke-virtual {v4}, Lj1/a;->l()Ljava/util/List;

    move-result-object v18

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem;->c()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Li1/h;

    invoke-virtual {v4}, Lj1/a;->g()Ljava/lang/String;

    move-result-object v8

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual {v4}, Lj1/a;->j()Z

    move-result v21

    move-object v4, v3

    move-object v5, v9

    move-object v6, v10

    move-object v7, v15

    move-object/from16 p1, v9

    move-object/from16 v9, v18

    move-object/from16 v22, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v15

    move/from16 v15, v20

    move/from16 v18, v21

    invoke-direct/range {v4 .. v18}, Li1/h;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Li1/j;JJZJZ)V

    goto :goto_1

    :cond_2
    move-object/from16 p1, v9

    move-object/from16 v22, v10

    move-object/from16 v19, v15

    new-instance v3, Li1/h;

    invoke-virtual {v4}, Lj1/a;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lj1/a;->f()Li1/j;

    move-result-object v10

    const/4 v15, 0x0

    invoke-virtual {v4}, Lj1/a;->j()Z

    move-result v20

    move-object v4, v3

    move-object/from16 v5, p1

    move-object/from16 v6, v22

    move-object/from16 v7, v19

    move-object/from16 v9, v18

    move/from16 v18, v20

    invoke-direct/range {v4 .. v18}, Li1/h;-><init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Li1/j;JJZJZ)V

    :goto_1
    sget-object v4, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->CREATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    move-object/from16 v5, p1

    if-eq v5, v4, :cond_4

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Li1/g;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Li1/g;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->UPDATE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move-object/from16 v6, v19

    invoke-virtual {v4, v6, v5}, Li1/g;->e(Ljava/lang/String;I)V

    new-instance v4, Lj1/e;

    invoke-direct {v4, v3}, Lj1/e;-><init>(Li1/h;)V

    invoke-virtual {v4}, Lj1/e;->e()V

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v6, v19

    new-instance v5, Li1/g;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Li1/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v5, v6, v4}, Li1/g;->e(Ljava/lang/String;I)V

    new-instance v4, Lj1/b;

    invoke-direct {v4, v3}, Lj1/b;-><init>(Li1/h;)V

    invoke-virtual {v4}, Lj1/b;->d()V

    :goto_3
    iget-object v3, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mResult:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecoverable runtimeException. Failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mResult:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->onCancelled(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mCallback:Lh1/a;

    invoke-interface {v0, p1}, Lh1/a;->onCancel(Ljava/util/List;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->onPostExecute(Ljava/util/List;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/task/ConnectedNotesTask;->mCallback:Lh1/a;

    invoke-interface {v0, p1}, Lh1/a;->onResult(Ljava/util/List;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
