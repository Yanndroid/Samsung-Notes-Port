.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->d(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    invoke-static {v6, v7, v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    invoke-static {v7, v8, v6, v5, v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->e(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getCacheFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager$CacheInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->deleteCache(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup$InputValues;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSaveBackup;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
