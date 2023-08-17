.class public Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextAwarenessCreator"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CALogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->mIntent:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public createSuggestionInfo(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator$SuggestionInfoCreatorCallable;-><init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;Lcom/samsung/android/support/senl/nt/model/contextawareness/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/contextawareness/common/result/SuggestionInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/model/contextawareness/ContextAwarenessCreator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSuggestionInfo# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object p1
.end method
