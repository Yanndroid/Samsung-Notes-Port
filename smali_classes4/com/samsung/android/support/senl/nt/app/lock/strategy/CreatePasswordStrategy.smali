.class public Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;
.super Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CreatePasswordStrategy"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

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


# virtual methods
.method public execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;->TAG:Ljava/lang/String;

    const-string p3, "execute"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "key_lock_scenario_type"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p3, 0x3f5

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/CreatePasswordStrategy;->TAG:Ljava/lang/String;

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

    const/4 p1, 0x0

    const/16 p4, 0x3f5

    if-ne p2, p4, :cond_1

    const/4 p2, -0x1

    if-ne p3, p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onSuccess([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method
