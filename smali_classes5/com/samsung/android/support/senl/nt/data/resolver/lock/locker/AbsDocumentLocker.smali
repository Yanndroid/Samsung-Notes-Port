.class abstract Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/DocumentLocker;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mAppContext:Landroid/content/Context;

.field public final mDocPath:Ljava/lang/String;

.field public final mDocUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsDocumentLocker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    return-void
.end method

.method private notifyLockUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->notifyToTagBoard()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestSyncByModification()Z

    return-void
.end method

.method private updateDatabase(ILjava/lang/String;)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker$1;-><init>(Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public abstract getLockType()I
    .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
    .end annotation
.end method

.method public lock()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->lockFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->getLockType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getAccountGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->updateDatabase(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->mDocUuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/pendingIntent/PendingNotification;->removePendingNotification(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->notifyLockUpdated()V

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " lock, lockType/isLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->getLockType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public abstract lockFile()Z
.end method

.method public abstract notifyToTagBoard()V
.end method

.method public unlock()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->unlockFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->updateDatabase(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->notifyLockUpdated()V

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unlock, lockType/isUnlocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/locker/AbsDocumentLocker;->getLockType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public abstract unlockFile()Z
.end method
