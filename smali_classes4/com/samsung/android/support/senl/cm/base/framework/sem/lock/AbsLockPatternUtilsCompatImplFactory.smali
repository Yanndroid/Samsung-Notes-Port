.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$LockPatternUtilCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;
    .locals 1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$LockPatternUtilCompatPureImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$LockPatternUtilCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/a;)V

    return-object p1
.end method
