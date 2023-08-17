.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final EXTRA_KEY_MIGRATE_SDOC_USER_GUID:Ljava/lang/String; = "extra_key_migrate_sdoc_user_guid"

.field public static final EXTRA_KEY_UUID:Ljava/lang/String; = "extra_uuid"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mDBOperationEnabled:Z

.field public mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LockManagerStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    :goto_1
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->lambda$migrateSDOCPreProcess$0(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->lambda$migrateSDOCPreProcess$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$migrateSDOCPreProcess$0(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "extra_key_migrate_sdoc_user_guid"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key_lock_scenario_type"

    const/4 p3, 0x6

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3f6

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static synthetic lambda$migrateSDOCPreProcess$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private migrateSDOCPostProcess(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/lock/DocumentLockResolver;->changeLockGuidForUndefined(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        -0x2
    .end array-data
.end method


# virtual methods
.method public varargs createPasswordAndContinue(Landroid/app/Activity;II[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_uuid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "key_lock_scenario_type"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
.end method

.method public isAccountChanged(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalPasswordOwnerGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setLocalPasswordOwnerGuid(Landroid/content/Context;Ljava/lang/String;)V

    return v5

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->TAG:Ljava/lang/String;

    const-string v0, "account is changed, diff account"

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account is changed, empty GUID ? : saved = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isEmptyGuid(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cur = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isEmptyGuid(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :cond_2
    return v5
.end method

.method public isValid()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public migrateSDOCPreProcess(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 10

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->TAG:Ljava/lang/String;

    const-string v1, "migrateSdocPreProcess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v2

    invoke-virtual {v2}, Lf/a;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, p2, v6

    invoke-static {p1, v7}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->getNoteEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getLockAccountGuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v9, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isNoteOwner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    return v5

    :cond_3
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/c;

    invoke-direct {v0, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/c;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showSdocMigrationDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x3f6

    if-ne p2, v0, :cond_1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    if-eqz p4, :cond_0

    const-string p2, "extra_key_migrate_sdoc_user_guid"

    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->migrateSDOCPostProcess(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setEnabledDBOperation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    return-void
.end method

.method public setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mDBOperationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
