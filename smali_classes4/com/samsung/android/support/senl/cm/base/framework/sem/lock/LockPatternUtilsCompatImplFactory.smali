.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory$LockPatternUtilsCompatSemImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory$LockPatternUtilsCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory$LockPatternUtilsCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/b;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;

    move-result-object p1

    return-object p1
.end method
