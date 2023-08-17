.class Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;
.super Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->createPassword(Landroid/app/Activity;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

.field public final synthetic val$requestCode:I

.field public final synthetic val$returnData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->val$requestCode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->val$returnData:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->val$requestCode:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->val$returnData:Landroid/content/Intent;

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onCreatePasswordFail(IILandroid/content/Intent;)V

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->val$requestCode:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;->val$returnData:Landroid/content/Intent;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onCreatePasswordSuccess(ILandroid/content/Intent;)V

    return-void
.end method
