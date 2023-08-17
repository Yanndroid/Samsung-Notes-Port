.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;


# instance fields
.field public mLatestAction:I

.field public mLatestRequestCode:I

.field public mLatestResultCode:I

.field public mLatestReturnData:Landroid/content/Intent;

.field public mLatestUuidList:[Ljava/lang/String;

.field public mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestAction:I

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 7

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v2, 0x6

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->saveLockHelperTask(IIILandroid/content/Intent;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreLockHelperTask()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestRequestCode:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestReturnData:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestUuidList:[Ljava/lang/String;

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestRequestCode:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestReturnData:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestUuidList:[Ljava/lang/String;

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;->verifyLockedNoteWithMultiAccount(ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->restoreTask()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestAction:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestRequestCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestUuidList:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestReturnData:Landroid/content/Intent;

    return-void
.end method

.method public abstract restoreTask()V
.end method

.method public varargs saveLockHelperTask(IIILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestAction:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestRequestCode:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestResultCode:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestReturnData:Landroid/content/Intent;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLatestUuidList:[Ljava/lang/String;

    return-void
.end method

.method public setLockManager(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/lock/LockManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    return-void
.end method

.method public varargs verifyLockedNote(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->saveLockHelperTask(IIILandroid/content/Intent;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->verify(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs verifyLockedNoteWithMultiAccount(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 6

    const/16 v1, 0x8

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->saveLockHelperTask(IIILandroid/content/Intent;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->verifyWithMultiAccount(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
