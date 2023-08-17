.class Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$uuidList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->val$uuidList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GUID received"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy$1;->val$uuidList:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;->c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyForDeleteStrategy;Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method
