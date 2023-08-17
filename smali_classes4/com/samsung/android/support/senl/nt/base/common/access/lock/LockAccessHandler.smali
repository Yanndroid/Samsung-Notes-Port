.class public Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOCKACTIVITY_CLASS:Ljava/lang/Class; = null

.field private static final TAG:Ljava/lang/String; = "CategoryAccessHandler"

.field private static sLockManagerFactory:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLockManager(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->sLockManagerFactory:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;->createLockManager(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;

    move-result-object p0

    return-object p0
.end method

.method public static getLockActivityClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->LOCKACTIVITY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setLockActivityClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->LOCKACTIVITY_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->LOCKACTIVITY_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "CategoryAccessHandler"

    const-string v0, "setCategorypickerClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setLockManagerFactory(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->sLockManagerFactory:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;

    return-void
.end method
