.class Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90000Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexModeCompatSem90500Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90000Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDexModeType(Landroid/content/Context;)I
    .locals 7

    const-string v0, "DesktopModeCompatImpl"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80200Impl;->getDexState(Landroid/content/Context;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "ENABLED"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "getDisplayType"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v3, :cond_5

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v3, "DISPLAY_TYPE_DUAL"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne p1, v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    const-string p1, "getDexModeType : DUAL"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x9000

    return p1

    :cond_2
    const-string v3, "DISPLAY_TYPE_STANDALONE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    const-string p1, "getDexModeType : STAND_ALONE"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x8000

    return p1

    :cond_4
    const-string p1, "getDexModeType : NONE"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed getDexModeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return v1
.end method

.method public getScreenLocation(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;->getDexModeType(Landroid/content/Context;)I

    move-result v0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem80200Impl;->isDexMode(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "DesktopModeCompatImpl"

    if-eqz p1, :cond_0

    const-string p1, "getScreenLocation. : DEX_ON_SCREEN"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x100

    return p1

    :cond_0
    const p1, 0x9000

    if-ne v0, p1, :cond_1

    const-string p1, "getScreenLocation. : DEX_ON_DEVICE"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x200

    return p1

    :cond_1
    const-string p1, "getScreenLocation. : DEX_OFF_MODE"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isDexMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;->getScreenLocation(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDexModeType(Landroid/content/Context;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/desktopmode/DesktopModeCompatImplFactory$DexModeCompatSem90500Impl;->getDexModeType(Landroid/content/Context;)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
