.class Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createLockManager(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iput-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePasswordFail(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreatePasswordSuccess(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public varargs onLockFail(II[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs onLockSuccess(I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs onUnlockFail(II[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs onUnlockSuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs onVerifyFail(II[Ljava/lang/String;)V
    .locals 0

    const-string p2, "HandoffActivity"

    const-string p3, "onVerifyFail"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x6d

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public varargs onVerifySuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "HandoffActivity"

    const-string p2, "onVerifySuccess"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->val$intent:Landroid/content/Intent;

    const-string p3, "lock_account_guid"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    iget-object p2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;->this$0:Lcom/samsung/android/app/notes/handoff/HandoffActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
