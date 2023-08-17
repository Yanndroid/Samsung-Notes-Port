.class public final Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0008H\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0008\u0010\u0011\u001a\u00020\u0005H\u0016J\u0008\u0010\u0012\u001a\u00020\nH\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0008\u0010\u0014\u001a\u00020\nH\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;",
        "display",
        "Landroid/view/Display;",
        "naviBarHeight",
        "",
        "(Landroid/view/Display;I)V",
        "mContentResolution",
        "",
        "mContentScreenSize",
        "Landroid/util/Size;",
        "mDeviceScreenResolution",
        "mDeviceScreenSize",
        "mWindowResolution",
        "mWindowSize",
        "getContentResolution",
        "getContentScreenSize",
        "getScreenResolution",
        "getScreenSize",
        "getWindowResolution",
        "getWindowSize",
        "setContentScreenSize",
        "",
        "setDeviceScreenSize",
        "setWindowSize",
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


# instance fields
.field private mContentResolution:F

.field private mContentScreenSize:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mDeviceScreenResolution:I

.field private mDeviceScreenSize:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mWindowResolution:F

.field private mWindowSize:Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Display;I)V
    .locals 2
    .param p1    # Landroid/view/Display;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mWindowSize:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mDeviceScreenSize:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mContentScreenSize:Landroid/util/Size;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->setWindowSize(Landroid/view/Display;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->setDeviceScreenSize(Landroid/view/Display;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->setContentScreenSize(Landroid/view/Display;I)V

    return-void
.end method

.method private final setContentScreenSize(Landroid/view/Display;I)V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez p2, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sub-int/2addr v1, p2

    goto :goto_1

    :cond_0
    if-ge p1, v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p1, p2

    :cond_2
    :goto_1
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, p1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mContentScreenSize:Landroid/util/Size;

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mContentResolution:F

    return-void
.end method

.method private final setDeviceScreenSize(Landroid/view/Display;)V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p1, Landroid/util/Size;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mDeviceScreenSize:Landroid/util/Size;

    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mDeviceScreenResolution:I

    return-void
.end method

.method private final setWindowSize(Landroid/view/Display;)V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p1, Landroid/util/Size;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mWindowSize:Landroid/util/Size;

    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mWindowResolution:F

    return-void
.end method


# virtual methods
.method public getContentResolution()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mContentResolution:F

    return v0
.end method

.method public getContentScreenSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mContentScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public getScreenResolution()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mDeviceScreenResolution:I

    return v0
.end method

.method public getScreenSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mDeviceScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public getWindowResolution()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mWindowResolution:F

    return v0
.end method

.method public getWindowSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/ScreenData;->mWindowSize:Landroid/util/Size;

    return-object v0
.end method
