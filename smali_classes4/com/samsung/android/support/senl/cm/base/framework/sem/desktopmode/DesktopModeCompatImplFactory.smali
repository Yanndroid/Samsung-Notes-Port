.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90000Impl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80200Impl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80100Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DesktopModeCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory$IDesktopModeCompatImpl;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    const v1, 0x138e4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x13948

    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80100Impl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80100Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/a;)V

    return-object p1

    :cond_1
    const p1, 0x15f90

    if-ge v0, p1, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80200Impl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80200Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/b;)V

    return-object p1

    :cond_2
    const p1, 0x16184

    if-ge v0, p1, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90000Impl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90000Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/c;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/d;)V

    return-object p1

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/AbsDesktopModeCompatImplFactory$IDesktopModeCompatImpl;

    move-result-object p1

    return-object p1
.end method
