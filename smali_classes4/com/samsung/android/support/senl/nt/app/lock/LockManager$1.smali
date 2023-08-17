.class Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;
.super Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->lock(Landroid/app/Activity;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

.field public final synthetic val$requestCode:I

.field public final synthetic val$uuidList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;->val$requestCode:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;->val$uuidList:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;->val$requestCode:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;->val$uuidList:[Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onLockFail(II[Ljava/lang/String;)V

    return-void
.end method

.method public varargs onSuccess([Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;->getListener()Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;->val$requestCode:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;->onLockSuccess(I[Ljava/lang/String;)V

    return-void
.end method
