.class Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenInsetDrawable"


# instance fields
.field private mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

.field private mMutated:Z

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput p2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetLeft:I

    iput p3, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetTop:I

    iput p4, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetRight:I

    iput p5, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetBottom:I

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget v2, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mChangingConfigurations:I

    or-int/2addr v0, v2

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget v3, v2, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v1, v4

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v5, v2, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v1, v5

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_1

    or-int p1, v3, v4

    or-int/2addr p1, v5

    or-int/2addr p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget v2, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetRight:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetBottom:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setInsets(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iput p1, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetLeft:I

    iput p2, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetTop:I

    iput p3, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetRight:I

    iput p4, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetBottom:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;->mInsetState:Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
