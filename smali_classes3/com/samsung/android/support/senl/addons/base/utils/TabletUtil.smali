.class public final Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0007J\u0008\u0010\u0012\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;",
        "",
        "()V",
        "SMALLEST_WIDTH_TABLET",
        "",
        "TAG",
        "",
        "mIsTabletMode",
        "",
        "mIsTabletUi",
        "checkTabletMode",
        "",
        "activity",
        "Landroid/app/Activity;",
        "getDeviceStableDensity",
        "context",
        "Landroid/content/Context;",
        "isTabletMode",
        "isTabletUi",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SMALLEST_WIDTH_TABLET:I = 0x249

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mIsTabletMode:Z

.field private static mIsTabletUi:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;

    const-string v0, "TabletUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkTabletMode(Landroid/app/Activity;)V
    .locals 14
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    sput-boolean v1, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletUi:Z

    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/WindowManager;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/WindowManager;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "tablet"

    const-string v4, "phone"

    const-string v5, "checkTabletMode - "

    if-eqz v2, :cond_8

    :try_start_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->getDeviceStableDensity(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/16 v6, 0xa0

    int-to-float v6, v6

    div-float/2addr v0, v6

    invoke-virtual {v2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, " / "

    const-string v9, " = "

    const/16 v10, 0x249

    const/4 v11, 0x1

    if-ge v6, v7, :cond_2

    int-to-float v7, v6

    div-float/2addr v7, v0

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_3

    :try_start_1
    sput-boolean v11, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    sget-object v10, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkTabletMode - 1 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v10, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    int-to-float v6, v7

    div-float/2addr v6, v0

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_3

    sput-boolean v11, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    sget-object v10, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkTabletMode - 2 : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v11, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    const-string v6, "checkTabletMode - Device type is tablet"

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean v11, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    const-string v6, "checkTabletMode - Dex"

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    if-eqz v0, :cond_8

    sput-boolean v11, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletUi:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/samsung/android/support/senl/addons/R$dimen;->base_menu_min_tablet_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_3
    if-ge v0, p0, :cond_8

    sget-object p0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    const-string v0, "checkTabletMode - window size is short!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletUi:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_5
    sget-object p0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, v4

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getDeviceStableDensity(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    return p1
.end method

.method public static final isTabletMode()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletMode:Z

    return v0
.end method

.method public static final isTabletUi()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->mIsTabletUi:Z

    return v0
.end method
