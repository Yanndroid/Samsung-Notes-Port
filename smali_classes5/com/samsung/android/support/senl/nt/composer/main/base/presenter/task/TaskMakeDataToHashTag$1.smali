.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->saveCache(Z)Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->isAutoSaveOptionEnabled()Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeTask# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getDocPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;->recognize(Landroid/content/Context;Ljava/lang/String;Landroid/os/CancellationSignal;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$ResultValues;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeDataToHashTag$ResultValues;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
