.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;

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

    const-string v0, "onVerifyFail# requestCode "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failCode "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockHelper"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs onVerifySuccess(ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onVerifySuccess# requestCode : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LockHelper"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x70

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;->onFolderDeleteVerifySuccess()V

    :cond_0
    return-void
.end method
