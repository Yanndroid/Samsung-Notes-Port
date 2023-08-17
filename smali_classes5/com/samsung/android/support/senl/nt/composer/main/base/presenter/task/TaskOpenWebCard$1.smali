.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getAttachedHTMLFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$InputValues;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/scrapbook/ScrapBookViewer;->getIntentForScrapbook(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$ResultValues;

    invoke-direct {v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$ResultValues;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskOpenWebCard;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;->onError(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
