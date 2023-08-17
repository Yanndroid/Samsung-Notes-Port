.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyForDeleteStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$2;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->verifyWithGUID(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private varargs verifyWithGUID(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isAccountChanged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x5

    const-string v1, "key_lock_scenario_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x3f7

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->TAG:Ljava/lang/String;

    const-string v1, "account changed or no password"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->createPasswordAndContinue(Landroid/app/Activity;II[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->TAG:Ljava/lang/String;

    const-string v0, "execute"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    invoke-direct {p3}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->requestGUID(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;)V

    return-void
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->TAG:Ljava/lang/String;

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

    const/16 v0, 0x3ed

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p2, v0, :cond_2

    const/16 p1, 0x3f7

    const/4 p4, 0x0

    if-eq p2, p1, :cond_0

    return p4

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    if-ne p3, v2, :cond_1

    new-array p2, p4, [Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    return v1

    :cond_2
    if-ne p3, v2, :cond_3

    const-string p2, "extra_uuid"

    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_1
    return v1
.end method
