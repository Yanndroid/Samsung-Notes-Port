.class public Landroidx/reflect/content/res/SeslConfigurationReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/content/res/Configuration;

    sput-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getField_SEM_DESKTOP_MODE_ENABLED()I
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "hidden_SEM_DESKTOP_MODE_ENABLED"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const-string v3, "SEM_DESKTOP_MODE_ENABLED"

    invoke-static {v0, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v2, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    :goto_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private static getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I
    .locals 5
    .param p0    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "hidden_semDesktopModeEnabled"

    invoke-static {v0, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    sget-object v0, Landroidx/reflect/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    const-string v2, "semDesktopModeEnabled"

    invoke-static {v0, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    instance-of p0, v1, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static isDexEnabled(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/reflect/content/res/SeslConfigurationReflector;->getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I

    move-result p0

    invoke-static {}, Landroidx/reflect/content/res/SeslConfigurationReflector;->getField_SEM_DESKTOP_MODE_ENABLED()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
