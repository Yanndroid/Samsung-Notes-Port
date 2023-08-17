.class public final Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0008\u0010\u0011\u001a\u00020\nH\u0002J\u0008\u0010\u0012\u001a\u00020\nH\u0002J\u0008\u0010\u0013\u001a\u00020\nH\u0002J\u0008\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010\u0015\u001a\u00020\nH\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;",
        "",
        "()V",
        "SETTINGS_HIDE_NAVIGATION_BAR_WHEN_WRITING",
        "",
        "SETTINGS_PREFS_NAME",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "mIsNavigationBarEnabled",
        "",
        "hideNavigationBar",
        "activity",
        "Landroid/app/Activity;",
        "decor",
        "Landroid/view/View;",
        "isDefaultHideNavigationOptionEnabled",
        "isEnabledToHideNavigationBar",
        "isFoldModelToHideNaviBarOnLandscape",
        "isHideNavigationBarEnable",
        "isSupportHideNavigationOption",
        "isValidModelToHideNaviBarOnLandscape",
        "setEnabledToHideNavigationBar",
        "",
        "value",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTINGS_HIDE_NAVIGATION_BAR_WHEN_WRITING:Ljava/lang/String; = "settings_hide_navigation_bar_when_writing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_PREFS_NAME:Ljava/lang/String; = "Settings"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mIsNavigationBarEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;

    const-string v0, "FeatureInfo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hideNavigationBar(Landroid/app/Activity;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->hideNavigationBar(Landroid/app/Activity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private final isDefaultHideNavigationOptionEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isSupportHideNavigationOption()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isTabletModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final isEnabledToHideNavigationBar()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->mIsNavigationBarEnabled:Z

    return v0
.end method

.method private final isFoldModelToHideNaviBarOnLandscape()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature;->Companion:Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Companion;->getFeature()Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ModelFeature$Feature;->isFoldSupportHideNavigationBar()Z

    move-result v0

    return v0
.end method

.method private final isHideNavigationBarEnable()Z
    .locals 4

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string/jumbo v2, "settings_hide_navigation_bar_when_writing"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isDefaultHideNavigationOptionEnabled()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isSupportHideNavigationOption()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isDefaultHideNavigationOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    move v0, v1

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHideNavigationBarHideModeEnable# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final isSupportHideNavigationOption()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isSpenModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->hasSoftKey()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isValidModelToHideNaviBarOnLandscape()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isTabletModel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isFoldModelToHideNaviBarOnLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final setEnabledToHideNavigationBar(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->mIsNavigationBarEnabled:Z

    return-void
.end method


# virtual methods
.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final hideNavigationBar(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isHideNavigationBarEnable()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->setEnabledToHideNavigationBar(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isEnabledToHideNavigationBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/utils/FeatureInfo;->isValidModelToHideNaviBarOnLandscape()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/2addr p1, v0

    or-int/lit16 p1, p1, 0x1000

    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method
