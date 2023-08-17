.class Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;
.super Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->unlock(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

.field public final synthetic val$requestCode:I

.field public final synthetic val$returnData:Landroid/content/Intent;

.field public final synthetic val$uuidList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$requestCode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$returnData:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$uuidList:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$requestCode:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$uuidList:[Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onUnlockFail(II[Ljava/lang/String;)V

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$requestCode:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$returnData:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;->val$uuidList:[Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onUnlockSuccess(ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
