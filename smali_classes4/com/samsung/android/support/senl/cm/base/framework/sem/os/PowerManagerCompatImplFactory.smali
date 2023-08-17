.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverRImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverQImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemImpl;
    }
.end annotation


# static fields
.field private static final IS_BUILD_VERSION_OVER_M:Z

.field private static final IS_BUILD_VERSION_OVER_Q:Z

.field private static final IS_BUILD_VERSION_OVER_R:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerCompatImpl"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-le v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->IS_BUILD_VERSION_OVER_M:Z

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->IS_BUILD_VERSION_OVER_Q:Z

    const/16 v3, 0x1e

    if-le v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->IS_BUILD_VERSION_OVER_R:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->IS_BUILD_VERSION_OVER_M:Z

    if-eqz v0, :cond_2

    sget-boolean p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->IS_BUILD_VERSION_OVER_R:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverRImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverRImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    sget-boolean p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->IS_BUILD_VERSION_OVER_Q:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverQImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemOverQImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory$PowerManagerCompatSemImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory;->create(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method
