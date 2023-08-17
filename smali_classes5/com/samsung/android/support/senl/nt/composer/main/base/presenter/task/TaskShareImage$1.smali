.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$ResultValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$ResultValues;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Ljava/util/List;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->sharePageImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->shareImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;->pause(Ljava/lang/String;)V

    :goto_1
    move v1, v9

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeImage(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$ResultValues;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$ResultValues;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->close(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;->close(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$InputValues;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareImage;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    throw v2
.end method
