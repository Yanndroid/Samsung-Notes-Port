.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

.field public final synthetic val$dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "executeTask# thread done - "

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeTask# thread start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->trimCache(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clipdata_content"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "_yyMMdd_HHmmss_SSS"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardCacheManager;->getClipboardPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".sdocx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    iget-object v5, v5, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    invoke-static {v4, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;

    move-result-object v7

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->val$dropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-direct {v4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->h()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "err: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-direct {v4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    iget-object v5, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-direct {v5, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method
