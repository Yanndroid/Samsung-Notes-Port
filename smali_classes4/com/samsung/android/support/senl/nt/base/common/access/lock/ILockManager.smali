.class public interface abstract Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createPassword(Landroid/app/Activity;ILandroid/content/Intent;)V
.end method

.method public abstract enableLockOperation(Z)V
.end method

.method public abstract isRequestCodeActivityResult(I)Z
.end method

.method public varargs abstract lock(Landroid/app/Activity;I[Ljava/lang/String;)V
.end method

.method public abstract onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public varargs abstract unlock(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

.method public varargs abstract verify(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

.method public varargs abstract verifyForConvert(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
.end method

.method public abstract verifyForDelete(Landroid/app/Activity;I)V
.end method

.method public varargs abstract verifyWithMultiAccount(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
.end method
