.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$WindowManagerCompatPureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowManagerCompatPureImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$WindowManagerCompatPureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canAllowByRegion(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public exitMultiWindow(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMultiWindowMode(Landroid/app/Activity;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMultiWindowMode(Landroid/content/res/Configuration;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isFreeFormWindow(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMultiWindowMode(Landroid/app/Activity;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public semIsPopOver(Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setExtensionFlagDozeMode(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public setExtensionFlagMultiWindowHandlerHidden(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public setForceHideFloatingMultiWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setResizeFullscreenWindowOnSoftInput(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setSensitivePalmRecognitionEnabled(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
