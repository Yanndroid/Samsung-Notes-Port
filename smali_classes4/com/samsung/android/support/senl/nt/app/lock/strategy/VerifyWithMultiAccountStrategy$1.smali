.class Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiAccountDialogFragment$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;->verifyOtherAccount(Landroid/app/Activity;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;

.field public final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/account/AccountHelper;->getLoginForLockIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x3f8

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;->val$activity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->lock_note_cannot_open_another_account:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyWithMultiAccountStrategy;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->onFail(I)V

    :goto_0
    return-void
.end method
