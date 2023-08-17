.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$ResultValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$ResultValues;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;->ComposerToolbar:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;

    invoke-virtual {v3, v4, v2, v6, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->createIntentToShareText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCallbackReceiver$ShareCaller;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shareNote, intent is null"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$ResultValues;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->close(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->startChooserActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;->pause(Ljava/lang/String;)V

    :goto_0
    move v1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makeText(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$ResultValues;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->close(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->close(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareText;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    throw v2
.end method
