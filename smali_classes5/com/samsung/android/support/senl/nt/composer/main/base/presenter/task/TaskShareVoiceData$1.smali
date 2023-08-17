.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareVoiceData(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;->pause(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareVoiceData;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    throw v2
.end method
