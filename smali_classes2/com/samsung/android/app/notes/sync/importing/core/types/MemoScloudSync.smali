.class public Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;
.super Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoScloudSync"

.field private static mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private futures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mAuthorization:Ljava/lang/String;

.field private mCategoryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld1/f;",
            ">;"
        }
    .end annotation
.end field

.field private mDataItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld1/f;",
            ">;"
        }
    .end annotation
.end field

.field private mMemoServiceHelper:La2/b;

.field private mUseConcurrentRequest:Z

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v0, "MemoScloudSync"

    invoke-direct {v7, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mAuthorization:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;",
            "I",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-direct {p0, p1, p3, v0, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mAuthorization:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mAuthorization:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    return-object p0
.end method

.method private applyCategoryToData(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "MemoScloudSync"

    const-string v2, "applyCategoryToData : Update category name and order in itemList"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/d;

    invoke-virtual {v4}, Ld1/d;->j()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "categoryUUID"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyCategoryToData : Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;

    iget-object v9, v8, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;->b:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v5, v8, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;->a:Ljava/lang/String;

    iget-object v6, v8, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;->c:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v5, v0

    :goto_2
    invoke-virtual {v4, v5}, Ld1/d;->L(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ld1/d;->H(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;La2/b;Ljava/lang/String;Ld1/d;Ld1/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->downloadAttachedFiles(La2/b;Ljava/lang/String;Ld1/d;Ld1/f;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;La2/b;Ljava/lang/String;Ld1/d;Ld1/f;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->downloadContentForDataV1(La2/b;Ljava/lang/String;Ld1/d;Ld1/f;Ljava/util/List;)V

    return-void
.end method

.method private downloadAttachedFiles(La2/b;Ljava/lang/String;Ld1/d;Ld1/f;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "] : "

    const-string v5, "Server Error!"

    const-string v6, "MemoScloudSync"

    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x141

    const/16 v9, 0x13b

    const/16 v10, 0x12f

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "downloadAttachedFiles : localRoot = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v11, 0x0

    invoke-virtual {v1, v0, v11, v12}, La2/b;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Ld1/f;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v0

    if-eq v0, v10, :cond_4

    if-eq v0, v9, :cond_4

    if-eq v0, v8, :cond_4

    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ls0/c;

    const/16 v1, 0x138

    const-string v2, "contentRootFile.mkdirs failed"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, v3, Ld1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-ge v11, v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v3, Ld1/f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/f$a;

    iget-object v12, v0, Ld1/f$a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "downloadAttachedFiles : download a attached file ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12, v0}, La2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v0

    if-eq v0, v10, :cond_2

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_2

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadAttachedFiles : fail to Download a attached file ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    const-string v0, "downloadAttachedFiles : fail to get the list info for the attached file"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private downloadContentForData(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "/MEMO_DATA"

    const-string v1, "MemoScloudSync"

    const-string v2, "downloadContentForData start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13b

    :try_start_0
    const-string v3, "downloadContentForData : Download data folders"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mMemoServiceHelper:La2/b;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, La2/b;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ls0/c;->a()I

    move-result v3

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_a

    if-eq v3, v2, :cond_a

    const/16 v4, 0x141

    if-eq v3, v4, :cond_a

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    :try_start_1
    const-string v5, "children"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "path"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "type"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    const-string v10, "deleted"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v7, "folder"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ld1/f;

    invoke-direct {v7}, Ld1/f;-><init>()V

    iput-object v8, v7, Ld1/f;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ls0/c;

    const/16 v0, 0x130

    const-string v1, "Error while loading memo json"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadContentForData : size of the content folder : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_3
    if-ge v3, v0, :cond_7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/f;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Ld1/f;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mkdirs returned false"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Ld1/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/content.sync"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;

    invoke-direct {v8, p0, v6, v7, v5}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ljava/lang/String;Ljava/lang/String;Ld1/f;)V

    iget-boolean v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, v4

    :goto_5
    if-ge v0, p1, :cond_8

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    :try_start_2
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Handle the RuntimeException as SyncException!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Handle the ExecutionException as SyncException!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_9
    const-string p1, "downloadContentForData finish"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_a
    const-string p1, "downloadContentForData: fail to Download data folders"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    const-string v0, "Server Error!"

    invoke-direct {p1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private downloadContentForDataV1(La2/b;Ljava/lang/String;Ld1/d;Ld1/f;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La2/b;",
            "Ljava/lang/String;",
            "Ld1/d;",
            "Ld1/f;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "] : "

    const-string v1, "MemoScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p4, Ld1/f;->a:Ljava/lang/String;

    const-string v3, "MEMO_DATA/"

    const-string v4, "MEMO_DATA_V_1/"

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/content.sync"

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadContentForDataV1 : download a content.sync ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4, p2}, La2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadContentForDataV1 : Exception = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rcode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3a

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v5, 0x2c

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    const-string v3, "downloadContentForDataV1 : can\'t parse the error!"

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/16 v3, 0x7d06

    if-ne v2, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "downloadContentForDataV1 : no content.sync ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadContentForDataV1 : SyncException = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_2
    const/4 p1, 0x0

    :try_start_2
    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/utils/a;->l(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p4, "MEMO"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p4, "categoryUUID"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;

    iget-object p5, p4, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;->b:Ljava/lang/String;

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p1, p4, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;->a:Ljava/lang/String;

    goto :goto_4

    :cond_2
    const-string p1, ""

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p3, p1}, Ld1/d;->L(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private initializeImportDataForList(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mDataItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/MEMO_DATA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "MemoScloudSync"

    if-eqz v1, :cond_2

    const-string v1, "getImportItems : try again to delete memoDataRoot!"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v4, " mkdirs returned false"

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_V_1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public downloadContentForCategory(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/MEMO_CATE"

    const-string v1, "MemoScloudSync"

    const-string v2, "downloadContentForCategory() start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    const/16 v3, 0x13b

    :try_start_0
    const-string v4, "downloadContentForCategory : Download category folders"

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mMemoServiceHelper:La2/b;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v0, v5, v6}, La2/b;->c(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ls0/c;->a()I

    move-result v5

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_a

    if-eq v5, v3, :cond_a

    const/16 v6, 0x141

    if-eq v5, v6, :cond_a

    move-object v4, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    :try_start_1
    const-string v6, "children"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_2

    :cond_0
    const-string v11, "deleted"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const-string v8, "folder"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ld1/f;

    invoke-direct {v8}, Ld1/f;-><init>()V

    iput-object v9, v8, Ld1/f;->a:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadContentForCategory : size of the category folder : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->getThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_4
    if-ge v6, v4, :cond_7

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mCategoryItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld1/f;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Ld1/f;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mkdir returned failed in downloadContentForCategory"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Ld1/f;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/content.sync"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$d;

    invoke-direct {v9, p0, v7, v8, p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$d;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-boolean v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz v7, :cond_6

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz p1, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    move p2, v5

    :goto_6
    if-ge p2, p1, :cond_8

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Handle the RuntimeException as SyncException!"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Handle the ExecutionException as SyncException!"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v3, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_9
    const-string p1, "downloadContentForCategory finished"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p1, "downloadContentForCategory : fail to Download category folders"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ls0/c;

    invoke-virtual {v4}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public getImportItems()V
    .locals 15

    const-string v0, "MemoScloudSync"

    const-string v1, "getImportItems() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, La2/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mAuthorization:Ljava/lang/String;

    invoke-static {}, Lo/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mMemoServiceHelper:La2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/utils/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/MemoData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->initializeImportDataForList(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->downloadContentForData(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2, v11}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->downloadContentForCategory(Ljava/lang/String;Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-direct {p0, v4, v11}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->applyCategoryToData(Ljava/util/List;Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$a;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    move v4, v12

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld1/d;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v7, v8, v4, v3, v5}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onUpdated(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IILd1/d;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v13, v12

    :goto_1
    if-ge v13, v3, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ld1/d;

    new-instance v14, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;

    move-object v4, v14

    move-object v5, p0

    move-object v6, v2

    move-object v8, v11

    move v9, v13

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$b;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ljava/lang/String;Ld1/d;Ljava/util/List;II)V

    iget-boolean v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mUseConcurrentRequest:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v12

    :goto_3
    if-ge v3, v2, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    const/16 v5, 0x13b

    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-interface {v4, v12}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "MemoScloudSync"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MemoScloudSync"

    const-string v2, "Handle the RuntimeException as SyncException!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ls0/c;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "MemoScloudSync"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MemoScloudSync"

    const-string v2, "Handle the ExecutionException as SyncException!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ls0/c;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_2
    move-exception v4

    const-string v5, "MemoScloudSync"

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->futures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    const-string v2, "MemoScloudSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImportItems finish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mResultList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") - elapsed time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancelled()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->onCancelled()V

    return-void
.end method

.method public startImport()V
    .locals 22

    move-object/from16 v9, p0

    const-string v0, "MemoScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    new-instance v0, La2/b;

    iget-object v1, v9, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mAuthorization:Ljava/lang/String;

    invoke-static {}, Lo/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v9, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->mMemoServiceHelper:La2/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/MemoData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    const/4 v1, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-interface {v0, v2, v1, v13}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    :cond_0
    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/d;

    invoke-virtual {v2}, Ld1/d;->i()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v14

    goto :goto_0

    :cond_2
    move v0, v13

    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v9, v12, v15}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->downloadContentForCategory(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-direct {v9, v0, v15}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->applyCategoryToData(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lo/a;->a()Z

    move-result v16

    if-eqz v16, :cond_4

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v3, 0xa

    const/16 v4, 0x3e8

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    move-object v8, v0

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mSuccessfulList:Ljava/util/List;

    new-array v7, v14, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v7, v13

    new-array v6, v14, [Ls0/c;

    new-instance v17, Ljava/lang/Object;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    iget-object v1, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v4, v13

    :goto_2
    const/16 v3, 0x12f

    if-ge v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "MemoScloudSync"

    const-string v1, "Not Enough Storage!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    move v0, v13

    :goto_3
    if-ge v0, v5, :cond_5

    iget-object v1, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/d;

    invoke-virtual {v1, v13}, Ld1/d;->O(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    new-instance v0, Ls0/c;

    const/16 v1, 0x143

    const-string v2, "device storage is full!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, v9, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->mImportList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ld1/d;

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v18, v4

    move-object v4, v12

    move/from16 v19, v5

    move-object v5, v15

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v13, v8

    move-object/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$e;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ld1/d;Ljava/lang/String;Ljava/util/List;[Ls0/c;[Ljava/lang/Boolean;Ljava/lang/Object;)V

    if-eqz v16, :cond_7

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    :try_start_0
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter v20

    if-nez v16, :cond_9

    const/4 v1, 0x0

    :try_start_1
    aget-object v2, v21, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "MemoScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport() : SyncException2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v20, v2

    invoke-virtual {v3}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v20, v2

    throw v0

    :cond_9
    :goto_4
    monitor-exit v20

    :goto_5
    add-int/lit8 v4, v18, 0x1

    move-object v8, v13

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v2, "Server Error!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ls0/c;

    const-string v1, "Server Error!"

    const/16 v2, 0x12f

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a
    throw v1

    :cond_b
    move v2, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object v13, v8

    if-eqz v16, :cond_e

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MemoScloudSync"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    const-string v3, "Server Error!"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ls0/c;

    const-string v1, "Server Error!"

    invoke-direct {v0, v2, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    throw v1

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_7
    const-string v4, "MemoScloudSync"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    invoke-interface {v13}, Ljava/util/List;->clear()V

    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->d(Ljava/io/File;)Z

    monitor-enter v20

    if-eqz v16, :cond_10

    const/4 v1, 0x0

    :try_start_3
    aget-object v0, v21, v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    goto :goto_9

    :cond_f
    const-string v0, "MemoScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startImport() : SyncException3 :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, v20, v2

    invoke-virtual {v3}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v20, v2

    throw v0

    :cond_10
    :goto_9
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "MemoScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish startImport()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] - elapsed time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public syncProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
