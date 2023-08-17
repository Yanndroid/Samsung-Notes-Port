.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAvailableUriSize(I)I
    .locals 4

    const-string v0, "getAvailableUriSize# uriSize "

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " /  max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getLargeSizeItemsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-le p1, v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " /  availableCount: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;I)V

    move p1, v1

    :cond_2
    return p1
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download image start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->getAvailableUriSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download image start size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Landroid/net/Uri;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    new-instance v3, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->mDownExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->mDownExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->mDownExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->mDownExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download image pathList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download image end"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download isEmpty "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;Ljava/util/List;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download image fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    return-void
.end method
