.class public Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;
    }
.end annotation


# static fields
.field public static final FLASH_UNAVAILABLE:I = -0x1

.field public static final RATIO_TOLERANCE_PICTURE:F = 0.2f


# instance fields
.field public mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

.field public mJpegOrientation:I

.field public mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;->CLOSED:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mCameraState:Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty$CameraState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->mJpegOrientation:I

    return-void
.end method

.method public static isTranslucentNavigationBar(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/ResourceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearNavigationBarFlag(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->isTranslucentNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public getFlashMode()I
    .locals 3

    const-string v0, "PREF_DOCUMENT_SCAN"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "pref_camera_flash_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public reloadNavigationBarFlag(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->isTranslucentNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setFlashMode(I)V
    .locals 2

    const-string v0, "PREF_DOCUMENT_SCAN"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "pref_camera_flash_mode"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setNavigationBarFlag(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/detect/controller/CameraProperty;->isTranslucentNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
