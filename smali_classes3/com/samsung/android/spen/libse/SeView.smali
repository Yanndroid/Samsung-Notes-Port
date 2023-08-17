.class public Lcom/samsung/android/spen/libse/SeView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/ViewInterface;


# static fields
.field private static final HAPTIC_INDEX_DRAG_DROP_EFFECT_TICK:I = 0x29

.field private static final HAPTIC_INDEX_DRAG_DROP_FLOATING:I = 0x6e

.field private static final HAPTIC_INDEX_DRAG_DROP_START:I = 0x6c

.field private static final HAPTIC_INDEX_ONLY_FOR_DC:I = 0x64

.field private static final VALID_HAPTIC_PATTERN:I = 0x32


# instance fields
.field private directPenInput:Lcom/samsung/android/directpeninput/SemDirectPenInput;

.field private instance:Landroid/view/View;

.field private mIsSupportDcHaptic:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->directPenInput:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    return-void
.end method

.method private performDCHapticFeedback(Landroid/os/Vibrator;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public extractSmartClipData()V
    .locals 0

    return-void
.end method

.method public getHoverPopupWindow()Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/spen/libse/SeHoverPopupWindow;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public isSupportDcHaptic()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(I)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xaf3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetNumberOfSupportedPatterns()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/spen/libse/SeView;->isSupportDcHaptic()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x29

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/spen/libse/SeView;->performDCHapticFeedback(Landroid/os/Vibrator;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public requestAccessibilityFocus()V
    .locals 4

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "semRequestAccessibilityFocus"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    throw v0
.end method

.method public setHoverPopupType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->semSetHoverPopupType(I)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setPointerIcon(ILandroid/view/PointerIcon;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setPointerIcon(Landroid/content/Context;I)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method

.method public setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    .locals 1

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeView;->instance:Landroid/view/View;

    const/4 v0, 0x2

    invoke-static {p2, p3, p4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    throw p1
.end method
