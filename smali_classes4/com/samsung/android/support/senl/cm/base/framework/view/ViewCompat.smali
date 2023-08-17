.class public Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_MODE_MENU_ITEM_AUTOFILL_ID:I = 0x20000

.field public static final HAPTIC_INDEX_DRAG_DROP_EFFECT_TICK:I = 0x29

.field public static final HAPTIC_INDEX_DRAG_DROP_FLOATING:I = 0x6e

.field public static final HAPTIC_INDEX_DRAG_DROP_START:I = 0x6c

.field public static final HAPTIC_INDEX_LONG_PRESS:I = 0x1

.field public static final HAPTIC_INDEX_ONLY_FOR_DC:I = 0x64

.field public static final HAPTIC_INDEX_SHUTTER_PRESS:I = 0x25

.field public static final HAPTIC_INDEX_SHUTTER_RELEASE:I = 0x30

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/ViewCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/ViewCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/ViewCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getHoveringSpenIconDefault()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->getHoveringSpenIconDefault()I

    move-result v0

    return v0
.end method

.method public getStylusScrollDownType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->getStylusScrollDownType()I

    move-result v0

    return v0
.end method

.method public getStylusScrollLeftType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->getStylusScrollLeftType()I

    move-result v0

    return v0
.end method

.method public getStylusScrollRightType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->getStylusScrollRightType()I

    move-result v0

    return v0
.end method

.method public getStylusScrollUpType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->getStylusScrollUpType()I

    move-result v0

    return v0
.end method

.method public performHapticFeedback(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->performHapticFeedback(Landroid/view/View;I)V

    return-void
.end method

.method public requestAccessibilityFocus(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->requestAccessibilityFocus(Landroid/view/View;)V

    return-void
.end method

.method public setAutoHandwritingEnabled(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setAutoHandwritingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setPointerIcon(Landroid/view/View;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setPointerIcon(Landroid/view/View;ILandroid/graphics/Bitmap;FF)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-static {p3, p4, p5}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setRoundedCornerColor(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setRoundedCornerColor(Landroid/view/View;I)V

    return-void
.end method

.method public setSemSetActionModeAutoFillEnabled(Landroid/widget/TextView;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    const/high16 v1, 0x20000

    invoke-interface {v0, p1, v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setShadowAlpha(Landroid/view/View;F)V
    .locals 2

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOutlineSpotShadowColor()I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShadowColor(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSystemUiVisibility(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setSystemUiVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setSystemUiVisibility(Landroid/view/View;IZZZ)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setSystemUiVisibility(Landroid/view/View;IZZZ)V

    :cond_0
    return-void
.end method

.method public setTooltipText(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showContextMenu(Landroid/view/View;FF)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->showContextMenu(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
