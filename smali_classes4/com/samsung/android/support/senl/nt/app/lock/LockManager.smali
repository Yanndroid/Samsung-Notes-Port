.class public Lcom/samsung/android/support/senl/nt/app/lock/LockManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/LockManager$LockStrategyResultListener;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_LEGACY_LOCK_AFTER_CONVERT:Ljava/lang/String; = "extra_key_legacy_lock_after_convert"

.field public static final EXTRA_KEY_LEGACY_PASSWORD:Ljava/lang/String; = "extra_key_legacy_password"

.field private static final KEY_LOCK_MANAGER_STRATEGY:Ljava/lang/String; = "LockManagerStrategy"

.field private static final KEY_LOCK_MANAGER_STRATEGY_RESULT_LISTENER:Ljava/lang/String; = "ILockStrategyResultListener"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

.field private mLockOperationEnabled:Z

.field private mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

.field private mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LockManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mLockOperationEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    return-void
.end method


# virtual methods
.method public createPassword(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPassword : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$7;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x7

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public enableLockOperation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mLockOperationEnabled:Z

    return-void
.end method

.method public isRequestCodeActivityResult(I)Z
    .locals 1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public varargs lock(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), uuidList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mLockOperationEnabled:Z

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setEnabledDBOperation(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult from/requestCode/resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LockManagerStrategy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    const-string v0, "ILockStrategyResultListener"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    const-string v1, "LockManagerStrategy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    const-string v1, "ILockStrategyResultListener"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public varargs unlock(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), uuidList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$2;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mLockOperationEnabled:Z

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setEnabledDBOperation(Z)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    invoke-virtual {p2, p1, p4, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public varargs verify(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), uuidList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$3;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x3

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    invoke-virtual {p2, p1, p4, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public varargs verifyForConvert(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyForConvert : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), uuidList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$5;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x4

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    invoke-virtual {p2, p1, p4, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public verifyForDelete(Landroid/app/Activity;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyForDelete : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$6;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public varargs verifyWithMultiAccount(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyWithMultiAccount : requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), uuidList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$4;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager$4;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockManager;ILandroid/content/Intent;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mListener:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;->setListener(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    const/4 p2, 0x6

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategyFactory;->getOperator(I)Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategyListener:Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->setLockStrategyResultListener(Lcom/samsung/android/support/senl/nt/app/lock/strategy/ILockStrategyResultListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;->mStrategy:Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;

    invoke-virtual {p2, p1, p4, p3}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->execute(Landroid/app/Activity;[Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
