.class public Lcom/samsung/android/spen/libsdl/SdlView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/spen/libinterface/ViewInterface;


# instance fields
.field private instance:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public extractSmartClipData()V
    .locals 0

    return-void
.end method

.method public getHoverPopupWindow()Lcom/samsung/android/spen/libinterface/HoverPopupWindowInterface;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;-><init>(Landroid/widget/HoverPopupWindow;)V
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

.method public performHapticFeedback(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    throw p1
.end method

.method public requestAccessibilityFocus()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public setHoverPopupType(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlView;->instance:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setHoverPopupType(I)V
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
    .locals 0

    return-void
.end method

.method public setPointerIcon(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public setPointerIcon(Landroid/content/res/Resources;Landroid/graphics/Bitmap;FF)V
    .locals 0

    return-void
.end method
