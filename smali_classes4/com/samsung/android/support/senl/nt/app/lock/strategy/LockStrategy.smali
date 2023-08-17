.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

.field private mUuidList:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LockStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$2;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;-><init>(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->lambda$executeLockTask$0([Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mUuidList:[Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->lockWithGUID(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private executeLockTask(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->getUnLockedEntities(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask$DocumentInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v9, Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;

    invoke-direct {v9, p0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/d;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;[Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    if-nez p2, :cond_4

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_4
    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeLockNotes# uuid length : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;-><init>(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/presenter/task/LockTask;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p2, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$executeLockTask$0([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    return-void
.end method

.method private lockWithGUID(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isAccountChanged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->executeLockTask(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

    const-string v1, "account changed or no password"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->createPasswordAndContinue(Landroid/app/Activity;II[Ljava/lang/String;)V

    return-void
.end method

.method private requestGuid(Landroid/app/Activity;Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGuid needToCheckAccount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;ZLandroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestGUID(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

    const-string v0, "execute"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "android.permission.GET_ACCOUNTS"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/16 p2, 0x8

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_1
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mUuidList:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->requestGuid(Landroid/app/Activity;Z)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "empty"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->TAG:Ljava/lang/String;

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x1f

    if-ne p2, v3, :cond_2

    if-ne p3, v2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mGUIDManager:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->isGuidReceived(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->mUuidList:[Ljava/lang/String;

    const/16 p3, 0xb

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->lockWithGUID(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->requestGuid(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    return v0

    :cond_2
    const/16 v3, 0x3e9

    if-ne p2, v3, :cond_4

    if-ne p3, v2, :cond_3

    const-string p2, "extra_uuid"

    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_1
    return v0

    :cond_4
    return v1
.end method
