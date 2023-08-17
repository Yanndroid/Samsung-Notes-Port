.class public interface abstract Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract describeContents()I
.end method

.method public abstract getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;
.end method

.method public abstract onFail(I)V
.end method

.method public varargs abstract onSuccess([Ljava/lang/String;)V
.end method

.method public abstract setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method
