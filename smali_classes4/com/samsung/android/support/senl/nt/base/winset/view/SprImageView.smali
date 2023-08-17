.class public Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final COLOR_TINT_NONE:I = 0x1


# instance fields
.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_3

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_tint:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    :cond_0
    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_src:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->setImageResource(I)V

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/base/R$styleable;->SprAttribute_bg:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->setBackgroundResource(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    instance-of v1, p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/spr/drawable/SprDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/spr/drawable/SprDrawable;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/SprImageView;->mTintColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
