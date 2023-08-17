.class public Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;
.super Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;
.source "SourceFile"


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/app/lock/LockManager;)V
    .locals 0
    .param p2    # Lcom/samsung/android/support/senl/nt/app/lock/LockManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->setLockManager(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public restoreTask()V
    .locals 0

    return-void
.end method

.method public varargs verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->verifyLockedNote(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs verifyLockedNoteWithMultiAccount(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->verifyLockedNoteWithMultiAccount(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
