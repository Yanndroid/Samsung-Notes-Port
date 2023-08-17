.class Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockStrategyResultListener"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic describeContents()I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/a;->a(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    return-object v0
.end method

.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    return-void
.end method

.method public synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/a;->b(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;Landroid/os/Parcel;I)V

    return-void
.end method
