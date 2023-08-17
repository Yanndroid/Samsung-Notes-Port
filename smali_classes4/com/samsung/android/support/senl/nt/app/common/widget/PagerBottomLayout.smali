.class public Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout$Contract;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mDefaultPageButtonBackgroundColor:I

.field private mDefaultPageButtonRes:I

.field private mDefaultPageButtonTextColor:I

.field private mIndicator:Lcom/google/android/material/tabs/TabLayout;

.field private mLastPageButtonBackgroundColor:I

.field private mLastPageButtonRes:I

.field private mLastPageButtonTextColor:I

.field private mNextButton:Landroid/widget/Button;

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->pager_indicator_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute_lastPageButtonText:I

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->pager_start:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mLastPageButtonRes:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute_defaultPageButtonText:I

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$string;->pager_next:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mDefaultPageButtonRes:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute_lastPageButtonTextColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->pager_start_button_text_color:I

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mLastPageButtonTextColor:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute_defaultPageButtonTextColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->pager_default_button_text_color:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mDefaultPageButtonTextColor:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute_lastPageButtonBackgroundColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->pager_start_button_background_color:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mLastPageButtonBackgroundColor:I

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$styleable;->PagerBottomLayoutAttribute_defaultPageButtonBackgroundColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$color;->pager_default_button_background_color:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mDefaultPageButtonBackgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_back_button:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mBackButton:Landroid/view/View;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_next_button:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->pager_indicator:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mBackButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->updateLayout(ZZ)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public invalidateIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public updateLayout(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mBackButton:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mLastPageButtonRes:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mLastPageButtonTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mLastPageButtonBackgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mDefaultPageButtonRes:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mDefaultPageButtonTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mDefaultPageButtonBackgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mNextButton:Landroid/widget/Button;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/PagerBottomLayout;->mIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->pager_indicator_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/HorizontalScrollView;->setMinimumWidth(I)V

    :goto_2
    return-void
.end method
