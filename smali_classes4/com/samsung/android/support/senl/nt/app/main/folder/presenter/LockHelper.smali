.class public Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;
.super Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockHelper"


# instance fields
.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;-><init>(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->setLockManager(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;

    return-object p0
.end method


# virtual methods
.method public onActivityResultFromLockManager(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public restoreTask()V
    .locals 0

    return-void
.end method

.method public verifyForDelete(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->mLockManager:Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    const/16 v1, 0x70

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->verifyForDelete(Landroid/app/Activity;I)V

    return-void
.end method

.method public varargs verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public varargs verifyLockedNoteWithMultiAccount(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
