.class public interface abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory$IViewCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsViewCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IViewCompatImpl"
.end annotation


# static fields
.field public static final HAPTIC_INDEX_DRAG_DROP_EFFECT_TICK:I = 0x29

.field public static final HAPTIC_INDEX_DRAG_DROP_FLOATING:I = 0x6e

.field public static final HAPTIC_INDEX_DRAG_DROP_START:I = 0x6c

.field public static final HAPTIC_INDEX_LONG_PRESS:I = 0x1

.field public static final HAPTIC_INDEX_ONLY_FOR_DC:I = 0x64

.field public static final HAPTIC_INDEX_SHUTTER_PRESS:I = 0x25

.field public static final HAPTIC_INDEX_SHUTTER_RELEASE:I = 0x30


# virtual methods
.method public abstract getHoveringSpenIconDefault()I
.end method

.method public abstract getStylusScrollDownType()I
.end method

.method public abstract getStylusScrollLeftType()I
.end method

.method public abstract getStylusScrollRightType()I
.end method

.method public abstract getStylusScrollUpType()I
.end method

.method public abstract performHapticFeedback(Landroid/view/View;I)V
.end method

.method public abstract requestAccessibilityFocus(Landroid/view/View;)V
.end method

.method public abstract setActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)Z
.end method

.method public abstract setAutoHandwritingEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)Z
.end method

.method public abstract setRoundedCornerColor(Landroid/view/View;I)V
.end method

.method public abstract setSystemUiVisibility(Landroid/view/View;I)V
.end method

.method public abstract setSystemUiVisibility(Landroid/view/View;IZZZ)V
.end method

.method public abstract setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
.end method

.method public abstract showContextMenu(Landroid/view/View;FF)Z
.end method

.method public abstract startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
.end method
