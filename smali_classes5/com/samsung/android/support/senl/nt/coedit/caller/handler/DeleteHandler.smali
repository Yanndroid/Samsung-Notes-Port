.class public Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteHandler"


# instance fields
.field private final mDeleteExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "DeleteHandler_delete"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;->mDeleteExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public requestDeleteItems(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lv/d$c;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv/d$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lv/d$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;->mDeleteExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lv/d$c;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestDeleteLocalNoteByPush(Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lv/d$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;->mDeleteExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
