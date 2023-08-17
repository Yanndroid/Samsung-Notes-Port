.class Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertFile(Ljava/io/File;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

.field public final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field public final synthetic val$officeFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Landroid/os/CancellationSignal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->val$officeFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "FileInsertHelper"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->b(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->a(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;)Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/support/senl/nt/word/word/WordView;

    if-eqz v3, :cond_0

    const-string v3, "word/media"

    goto :goto_0

    :cond_0
    const-string v3, "ppt/media"

    :goto_0
    const-string v4, "Start unzip"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/word/base/utils/ZipUtils;->unZip(Ljava/lang/String;)V

    const-string v4, "End unzip"

    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const/4 v5, 0x0

    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Not found unzip folder"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Media Folder made failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const/4 v3, 0x5

    new-instance v5, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v5, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->a(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;)Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    move-result-object v6

    instance-of v6, v6, Lcom/samsung/android/support/senl/nt/word/powerpoint/PowerPointView;

    if-eqz v6, :cond_4

    new-instance v6, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    sget-object v8, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->AUDIO:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-direct {v6, v7, v8, v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;-><init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;Ljava/io/File;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    sget-object v9, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->VOICE:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-direct {v7, v8, v9, v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;-><init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v6, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    sget-object v8, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->BACKGROUND:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-direct {v6, v7, v8, v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;-><init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;Ljava/io/File;)V

    new-instance v7, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    sget-object v9, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->HANDWRITING:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-direct {v7, v8, v9, v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;-><init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;Ljava/io/File;)V

    new-instance v8, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    sget-object v10, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;->IMAGE:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;

    invoke-direct {v8, v9, v10, v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;-><init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert file exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-string v2, "Start zip"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->b(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/support/senl/nt/word/base/utils/ZipUtils;->zip(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;)V

    const-string v2, "End zip"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Start delete folder unzip"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/word/base/utils/ZipUtils;->deleteDirectory(Ljava/io/File;)Z

    const-string v2, "End delete folder unzip"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->val$officeFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->d(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert file error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->d(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->c(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Z)V

    return-void

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->c(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Z)V

    throw v0
.end method
