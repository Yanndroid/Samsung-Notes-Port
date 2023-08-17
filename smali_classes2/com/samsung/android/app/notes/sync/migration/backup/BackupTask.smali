.class public abstract Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;
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
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mBackUpCompleteListener:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;

.field public mIsAlive:Z

.field public mNeedToStop:Z

.field public mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

.field public mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

.field public final mParam:Lp1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BackupTask"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lp1/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mParam:Lp1/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNeedToStop:Z

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mIsAlive:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNotesDocumentRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesRecycleBinRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNotesRecycleBinRepository:Lcom/samsung/android/support/senl/nt/data/repository/document/NotesRecycleBinRepository;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
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

.method public isTaskAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mIsAlive:Z

    return v0
.end method

.method public onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->TAG:Ljava/lang/String;

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mBackUpCompleteListener:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;->a()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->TAG:Ljava/lang/String;

    const-string v0, "onPostExecute"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mBackUpCompleteListener:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;->a()V

    :cond_0
    return-void
.end method

.method public setBackUpCompleteListener(Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mBackUpCompleteListener:Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;

    return-void
.end method

.method public stopTask()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask;->mNeedToStop:Z

    return-void
.end method
