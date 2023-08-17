.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWindowManagerCompatImpl"
.end annotation


# static fields
.field public static final MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final MULTIWINDOW_MODE_SPLIT_SCREEN:I = 0x2


# virtual methods
.method public abstract canAllowByRegion(Ljava/lang/String;II)Z
.end method

.method public abstract exitMultiWindow(Landroid/app/Activity;)Z
.end method

.method public abstract getMultiWindowMode(Landroid/app/Activity;)I
.end method

.method public abstract getMultiWindowMode(Landroid/content/res/Configuration;)I
.end method

.method public abstract isFreeFormWindow(Landroid/app/Activity;)Z
.end method

.method public abstract isMultiWindowMode(Landroid/app/Activity;)Z
.end method

.method public abstract requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
.end method

.method public abstract semIsPopOver(Landroid/app/Activity;)Z
.end method

.method public abstract setExtensionFlagDozeMode(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract setExtensionFlagMultiWindowHandlerHidden(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract setForceHideFloatingMultiWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract setResizeFullscreenWindowOnSoftInput(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract setSensitivePalmRecognitionEnabled(Landroid/app/Activity;)V
.end method
