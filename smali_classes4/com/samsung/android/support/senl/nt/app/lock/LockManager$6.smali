.class Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;
.super Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->verifyForDelete(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;->val$requestCode:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;->val$requestCode:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onVerifyFail(II[Ljava/lang/String;)V

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;->val$requestCode:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onVerifySuccess(ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
