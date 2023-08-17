.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;)Landroid/content/Context;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-direct {v8, v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;->noteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v10

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->trimCache(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getDateString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipdata_page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sdocx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v13

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;->noteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageCopyData;->getIndex()I

    move-result v1

    invoke-virtual {v2, v8, v10, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getPageThumbnail(Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;

    iget-object v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;->noteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$InputValues;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v13, v2, v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$ResultValues;-><init>()V

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    return-void

    :cond_0
    if-nez v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$ResultValues;-><init>()V

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    return-void

    :cond_1
    :try_start_2
    invoke-static {v0, v1, v12, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->createHtmlTextData(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_3

    check-cast v2, Landroid/content/ClipData$Item;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/ClipData$Item;

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;Landroid/content/Context;Landroid/util/Pair;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$ResultValues;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCopyPage$ResultValues;-><init>()V

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    return-void

    :goto_2
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    throw v0
.end method
