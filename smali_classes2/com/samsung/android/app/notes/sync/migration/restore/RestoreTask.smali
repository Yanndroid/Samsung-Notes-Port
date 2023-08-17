.class public abstract Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x2800

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_LIMIT_TO_WAIT:J = 0xea60L


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field public final mFromSmartSwitch:Z

.field public final mImportItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/d;",
            ">;"
        }
    .end annotation
.end field

.field public mIntentAction:Ljava/lang/String;

.field private mIsServiceConnected:Z

.field private mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

.field public mMask:I

.field private mMigrationService:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

.field public final mParam:Lcom/samsung/android/app/notes/sync/migration/restore/b;

.field public mResult:I

.field public final mSecurityLevel:I

.field public mSessionKey:Ljava/lang/String;

.field public final mSessionTime:Ljava/lang/String;

.field public final mSourceApp:Ljava/lang/String;

.field public final mSourceFilePath:Ljava/lang/String;

.field public final mVersion:I

.field public mWorkType:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/restore/b;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIsServiceConnected:Z

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$1;-><init>(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;)V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mConnection:Landroid/content/ServiceConnection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mParam:Lcom/samsung/android/app/notes/sync/migration/restore/b;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->q()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->r()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSecurityLevel:I

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->v()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mVersion:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mResult:I

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIntentAction:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/restore/b;->w()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mWorkType:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMigrationService:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIsServiceConnected:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMigrationService:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onRestoreFinished()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIntentAction:Ljava/lang/String;

    const-string v2, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    iget-object v3, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIntentAction:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    iget v7, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mResult:I

    iget-boolean v8, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_0

    :cond_1
    iget-object v9, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    iget-object v10, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mWorkType:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    iget-object v11, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIntentAction:Ljava/lang/String;

    iget-object v12, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    iget v14, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    iget v15, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mResult:I

    iget-boolean v1, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    iget-object v2, v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-interface/range {v9 .. v17}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;->a(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method private onRestoreStarted()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIntentAction:Ljava/lang/String;

    const-string v1, "com.samsung.android.intent.action.REQUEST_INSTANT_SNAPSHOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;->d(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMask:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public closeCloseable(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_1

    :try_start_0
    instance-of v0, p1, Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    const-string v0, "IOException while closing closeable."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract decryptAndUnzip()I
.end method

.method public deleteFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-class v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Restore. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mIsServiceConnected:Z

    const/4 v2, 0x0

    if-nez p1, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v5, 0xea60

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    const-string v0, "Cannot bind to MigrationService. Quit!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mVersion:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->sendRestoreResponse(II)V

    monitor-exit p0

    return-object v2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMigrationService:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :try_start_1
    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for service connection."

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->prepare()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->decryptAndUnzip()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->update()I

    move-result p1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->clear()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End Restore. result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mImportItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->onRestoreFinished()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mMigrationService:Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    if-eqz p1, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->a()Lx/a;

    move-result-object p1

    invoke-interface {p1}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->TAG:Ljava/lang/String;

    const-string v1, "onPreExecute()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->onRestoreStarted()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public abstract prepare()V
.end method

.method public sendProgressRestore(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mWorkType:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc3/n;->F(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc3/n;->G(I)V

    :goto_0
    return-void
.end method

.method public sendRestoreResponse(II)V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mFromSmartSwitch:Z

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v3}, Lc3/n;->W(Z)V

    :cond_0
    move p1, v4

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    const/4 v0, -0x4

    if-ne p1, v0, :cond_2

    move v0, v1

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v3

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mWorkType:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    sget-object v6, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->ENTIRE:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    if-ne v5, v6, :cond_3

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p1, v0}, Lc3/n;->J(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSourceApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p1, v0}, Lc3/n;->K(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    :goto_2
    if-eq p2, v3, :cond_9

    const/16 p1, 0x40

    if-eq p2, p1, :cond_9

    const/16 p1, 0x80

    if-eq p2, p1, :cond_9

    const/16 p1, 0x400

    if-eq p2, p1, :cond_9

    const/16 p1, 0x800

    if-eq p2, p1, :cond_9

    const/16 p1, 0x1000

    if-ne p2, p1, :cond_5

    goto :goto_4

    :cond_5
    if-eq p2, v2, :cond_8

    const/16 p1, 0x10

    if-eq p2, p1, :cond_8

    const/16 p1, 0x20

    if-ne p2, p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x4

    if-ne p2, p1, :cond_7

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v4}, Lc3/n;->e0(Z)V

    goto :goto_5

    :cond_7
    if-ne p2, v1, :cond_a

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v4}, Lc3/n;->N(Z)V

    goto :goto_5

    :cond_8
    :goto_3
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v4}, Lc3/n;->O(Z)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    invoke-virtual {p1, v4}, Lc3/n;->T(Z)V

    :cond_a
    :goto_5
    return-void
.end method

.method public setListener(Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask;->mListener:Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;

    return-void
.end method

.method public abstract update()I
.end method
