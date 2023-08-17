.class Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

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
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onVerifyFail, requestCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DocOpenTriggerActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0x386

    if-eq p1, p3, :cond_0

    const/16 p3, 0x385

    if-ne p1, p3, :cond_2

    :cond_0
    const/16 p1, 0x8

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const/16 p2, 0x7d

    const-string p3, "android.permission.GET_ACCOUNTS"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string p2, "onVerifyFail"

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs onVerifySuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVerifySuccess, requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocOpenTriggerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onVerifySuccess, data or uuid list is invalid#, length : "

    const/16 v1, 0x386

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_1

    array-length p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getStartComposerIntentAfterUnlock(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->o(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Landroid/content/Intent;)V

    goto :goto_4

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x385

    if-ne p1, v1, :cond_6

    if-eqz p2, :cond_5

    array-length v1, p3

    if-gtz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    const-string p2, "onVerifySuccess, uuid is invalid"

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->e(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;->this$0:Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_6
    :goto_4
    return-void
.end method
