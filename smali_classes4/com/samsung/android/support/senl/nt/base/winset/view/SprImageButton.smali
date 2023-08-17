.class public Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# static fields
.field private static final COLOR_TINT_NONE:I = 0x1


# instance fields
.field public backgroundNormal:Landroid/graphics/drawable/Drawable;

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getSprDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBackgroundNormal()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRippleDrawable()Landroid/graphics/drawable/RippleDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p2, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_4

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_tint:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_src:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->setImageResource(I)V

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_bg:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->getSprDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_ripple_none:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Landroid/content/res/ColorStateList;

    new-array v3, v0, [[I

    new-array v4, v2, [I

    aput-object v4, v3, v2

    new-array v0, v0, [I

    const/high16 v4, 0x29000000

    aput v4, v0, v2

    invoke-direct {p2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->backgroundNormal:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, p2, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageButton;->mTintColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
