.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_KEY_LEGACY_LOCK_AFTER_CONVERT:Ljava/lang/String; = "extra_key_legacy_lock_after_convert"

.field private static final EXTRA_KEY_LEGACY_PASSWORD:Ljava/lang/String; = "extra_key_legacy_password"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$2;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->lambda$showLegacyVerifyDialog$1(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->lambda$verifyWithGUID$0()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->verifyWithGUID(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$showLegacyVerifyDialog$1(Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    goto :goto_1

    :cond_0
    const-string p3, "extra_key_legacy_password"

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p3

    invoke-virtual {p3}, Lf/a;->r()Z

    move-result p3

    invoke-static {p2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p4

    invoke-virtual {p4}, Lf/a;->o()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x1

    xor-int/2addr p4, v0

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isAccountChanged(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string p2, "extra_key_legacy_lock_after_convert"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    new-array p2, v2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$verifyWithGUID$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method private showLegacyVerifyDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->getNoteEntity(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p2

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;-><init>(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "doc_path"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lock_type"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;

    invoke-direct {p2, p0, p3, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog;->setOnResultListener(Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;)V

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "VerifyConvertPasswordDialog"

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private verifyWithGUID(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    const-class v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->countLegacyNotes(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    array-length v2, p2

    if-ne v1, v2, :cond_0

    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->showLegacyVerifyDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeLegacyNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

    const-string p3, "only have legacy note"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p3, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeNotOwnerNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_3

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

    const-string v0, "not owner"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/i;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/i;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;)V

    invoke-virtual {p0, p1, v1, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->migrateSDOCPreProcess(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->verifyOtherAccount(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeUnlockedNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

    const-string p2, "verify# unlocked notes only, no need to verify"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isAccountChanged(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string p2, "extra_uuid"

    invoke-virtual {p3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x5

    const-string v0, "key_lock_scenario_type"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p2, 0x3f4

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

    const-string p3, "verify# account changed or no password"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3eb

    invoke-virtual {p0, p1, p2, v4, v2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->createPasswordAndContinue(Landroid/app/Activity;II[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

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

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

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
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->TAG:Ljava/lang/String;

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

    const/16 v0, 0x3eb

    const/4 v1, 0x1

    const-string v2, "extra_uuid"

    const/4 v3, 0x5

    const/4 v4, -0x1

    if-eq p2, v0, :cond_2

    const/16 p1, 0x3f4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p3, v4, :cond_1

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    return v1

    :cond_2
    if-ne p3, v4, :cond_3

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_1
    return v1
.end method

.method public verifyOtherAccount(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_note_cannot_open_another_account:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method
