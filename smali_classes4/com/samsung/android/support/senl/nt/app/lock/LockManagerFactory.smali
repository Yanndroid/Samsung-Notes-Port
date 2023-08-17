.class public Lcom/samsung/android/support/senl/nt/app/lock/LockManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLockManager(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;-><init>(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    return-object v0
.end method
