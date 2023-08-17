.class public Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenFloatingImageButton"


# instance fields
.field private mNativeViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;->mNativeViewId:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getNativeViewId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;->mNativeViewId:I

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public setNativeViewId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/floatingview/SpenFloatingImageButton;->mNativeViewId:I

    return-void
.end method
