.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory$IInputMethodCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsInputMethodCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IInputMethodCompatImpl"
.end annotation


# virtual methods
.method public abstract configShowNavigationBar(Landroid/content/Context;)Z
.end method

.method public abstract forceHideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
.end method

.method public abstract getKeyboardSettingsSelectedLanguage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getNavigationBarHeight(Landroid/content/Context;)I
.end method

.method public abstract getNavigationBarHeightIgnoreHasSoftKey(Landroid/content/Context;)I
.end method

.method public abstract hideNavigationBar(Landroid/content/Context;Landroid/view/View;)V
.end method

.method public abstract isEnabledMobileKeyboard(Landroid/content/Context;)Z
.end method

.method public abstract isHoneyBoardSIP(Landroid/content/Context;Landroid/view/View;)Z
.end method

.method public abstract isInputMethodShown(Landroid/view/inputmethod/InputMethodManager;)Z
.end method

.method public abstract isKeyboardConnected(Landroid/view/inputmethod/InputMethodManager;)Z
.end method

.method public abstract isNavigationBarHidden(Landroid/content/Context;)Z
.end method

.method public abstract isPenDetectionSettingOn(Landroid/content/Context;)Z
.end method

.method public abstract minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z
.end method

.method public abstract showNavigationBar(Landroid/content/Context;Landroid/view/View;I)V
.end method
