.class final Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsetState"
.end annotation


# instance fields
.field public mCanConstantState:Z

.field public mChangingConfigurations:I

.field public mCheckedConstantState:Z

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mInsetBottom:I

.field public mInsetLeft:I

.field public mInsetRight:I

.field public mInsetTop:I

.field public mThemeAttrs:[I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mThemeAttrs:[I

    iget v0, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mChangingConfigurations:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mChangingConfigurations:I

    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget p2, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetLeft:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetLeft:I

    iget p2, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetTop:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetTop:I

    iget p2, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetRight:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetRight:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetBottom:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mInsetBottom:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mCanConstantState:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mCheckedConstantState:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public canConstantState()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mCheckedConstantState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mCanConstantState:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mCheckedConstantState:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mCanConstantState:Z

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$InsetState;Landroid/content/res/Resources;Lcom/samsung/android/sdk/pen/setting/common/SpenInsetDrawable$1;)V

    return-object v0
.end method
