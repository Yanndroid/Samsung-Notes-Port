.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UnlockStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy$2;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->lambda$unlockWithGUID$0()V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->lambda$onActivityResult$1()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;Landroid/app/Activity;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->unlockWithGUID(Landroid/app/Activity;Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs executeUnlockTask(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V
    .locals 10

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeUnlockNotes# uuid length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->getLockedEntitiesWithExcludeTypes(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p3

    move-object v5, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;-><init>(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p3, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$onActivityResult$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$unlockWithGUID$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method private varargs unlockWithGUID(Landroid/app/Activity;Landroid/content/Intent;[Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeNotOwnerNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    const-string v0, "not owner"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/e;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/e;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->migrateSDOCPreProcess(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_note_cannot_open_another_account:I

    invoke-static {p1, p2, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeLegacyNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v1, p3

    if-nez v1, :cond_2

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    const-string p3, "only have legacy note"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p3, v4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_2
    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeUnlockedNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    const-string p2, "unlock# unlocked notes only, no need to verify"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isAccountChanged(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v0, "extra_uuid"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x5

    const-string v0, "key_lock_scenario_type"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p3, 0x3f3

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_6
    :goto_1
    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    const-string v0, "account changed or no password"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3ea

    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->createPasswordAndContinue(Landroid/app/Activity;II[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.GET_ACCOUNTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/16 p2, 0x8

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;Landroid/app/Activity;Landroid/content/Intent;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestGUID(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "empty"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : request/result -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    const/16 v0, 0x3ea

    const/4 v1, 0x1

    const-string v2, "extra_uuid"

    const/4 v3, -0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3f3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p3, v3, :cond_1

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/f;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/f;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;)V

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->executeUnlockTask(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    return v1

    :cond_2
    if-ne p3, v3, :cond_3

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/UnlockStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_1
    return v1
.end method
