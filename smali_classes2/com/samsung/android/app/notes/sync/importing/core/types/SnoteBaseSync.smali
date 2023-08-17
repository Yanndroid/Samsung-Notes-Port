.class public abstract Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;
.super Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;
.source "SourceFile"


# instance fields
.field public mConvertingCompleted:Z

.field private mTag:Ljava/lang/String;

.field private mWaitForCompleted:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mWaitForCompleted:Ljava/lang/Object;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->notifyConvertingFinished()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;Ld1/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->progressUpdate(Ld1/d;)V

    return-void
.end method

.method private notifyConvertingFinished()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    const-string v1, "notifyConvertingFinished!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mWaitForCompleted:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mWaitForCompleted:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private progressUpdate(Ld1/d;)V
    .locals 3

    invoke-virtual {p1}, Ld1/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progressUpdate : Deleting failed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld1/d;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private waitConvertingFinished()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "waitConvertingFinished : start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x1b7740

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mWaitForCompleted:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mWaitForCompleted:Ljava/lang/Object;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitConvertingFinished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "waitConvertingFinished : finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convertingImportItem(Ljava/lang/String;Ld1/d;Lz/a;)V
    .locals 3

    new-instance v0, Lx/b;

    invoke-virtual {p2}, Ld1/d;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-direct {v0, p1, v1}, Lx/b;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    :try_start_0
    new-instance p1, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;Ld1/d;)V

    invoke-virtual {p3, v0, p1}, Lz/a;->a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;Lz/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mTag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to convert : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->mConvertingCompleted:Z

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->notifyConvertingFinished()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteBaseSync;->waitConvertingFinished()V

    return-void
.end method

.method public finalizeConverter(Lz/a;)V
    .locals 0

    invoke-virtual {p1}, Lz/a;->c()V

    return-void
.end method

.method public initializeConverter(Lz/a;)V
    .locals 0

    invoke-virtual {p1}, Lz/a;->b()V

    return-void
.end method
