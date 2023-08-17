.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/IOptionMenuFingerDrawingPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OPTION_MENU_SMART_TIP_EMPTY_FINGER_DRAWING:I = -0x2

.field public static final OPTION_MENU_SMART_TIP_HIDE_FINGER_DRAWING:I = 0x0

.field public static final OPTION_MENU_SMART_TIP_NONE_FINGER_DRAWING:I = -0x1

.field public static final OPTION_MENU_SMART_TIP_PREF:Ljava/lang/String; = "OptionMenuSmartTipPref"

.field public static final OPTION_MENU_SMART_TIP_SHOW_FINGER_DRAWING:I = 0x1


# virtual methods
.method public abstract blockSmartTip()V
.end method

.method public abstract getSmartTipState()I
.end method

.method public abstract isSpenOnlyMode()Z
.end method

.method public abstract onAttachView(Landroid/app/Activity;)V
.end method

.method public abstract onClickFingerDrawing()V
.end method

.method public abstract onDetachView()V
.end method

.method public abstract setSmartTipState(I)V
.end method
