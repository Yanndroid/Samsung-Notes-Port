.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VerifyForConvertStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;->lambda$execute$0()V

    return-void
.end method

.method private synthetic lambda$execute$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    sget-object p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;->TAG:Ljava/lang/String;

    const-string v0, "execute"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyUtils;->excludeNotOwnerNote(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_1

    const-string v0, "not owner"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/lock/strategy/g;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/g;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->migrateSDOCPreProcess(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_note_cannot_open_another_account:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isAccountChanged(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p2, "account changed"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3ec

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->createPasswordAndContinue(Landroid/app/Activity;II[Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;->TAG:Ljava/lang/String;

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

    const/16 v0, 0x3ec

    if-ne p2, v0, :cond_1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    const-string p2, "extra_uuid"

    invoke-virtual {p4, p2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForConvertStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
