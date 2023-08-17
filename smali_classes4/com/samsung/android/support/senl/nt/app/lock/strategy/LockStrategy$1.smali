.class Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->requestGuid(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$needToCheckAccount:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;ZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->val$needToCheckAccount:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFail"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSuccess, GUID received"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->val$needToCheckAccount:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->d(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;->e(Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockStrategy;Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
