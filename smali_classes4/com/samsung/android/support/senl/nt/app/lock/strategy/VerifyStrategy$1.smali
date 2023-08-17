.class Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$OnRequestGUIDListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$returnData:Landroid/content/Intent;

.field public final synthetic val$uuidList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->val$uuidList:[Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->val$returnData:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GUID received"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->val$uuidList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy$1;->val$returnData:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->e(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
