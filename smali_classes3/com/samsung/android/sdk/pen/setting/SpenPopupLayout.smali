.class Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;
    }
.end annotation


# static fields
.field private static final NORMAL_SCROLL_BAR_THUMB_INDEX:I = 0x0

.field private static final NO_TITLE_SCROLL_BAR_THUMB_INDEX:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenSettingPopupType"


# instance fields
.field public hasAnimation:Z

.field private mChild:Landroid/view/ViewGroup;

.field private mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

.field private mContentBody:Landroidx/core/widget/NestedScrollView;

.field private mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOrientation:I

.field private mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;

.field private mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

.field private mRadius:I

.field private mScrollBarThumbOffset:[I

.field private mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

.field private mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hasAnimation:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->initView(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method private initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_popup_bg_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    sget p1, Lcom/samsung/android/spen/R$drawable;->dialog_bg:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->setShadowAlpha(Landroid/view/View;F)Z

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_favorite_scrollbar_offset_top_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setScrollBarThumbOffset(II)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_popup_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$id;->popup_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->total_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->setConsumedListener(Landroid/view/ViewParent;Landroid/view/View;)V

    sget v0, Lcom/samsung/android/spen/R$id;->popup_body:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->common_setting_layout_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mRadius:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setRadiusInScrollView(Landroid/view/View;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->initBackground(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private setContentWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setRadiusInScrollView(Landroid/view/View;Z)Z
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedScrollView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedScrollView;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [F

    const/4 v2, 0x0

    aput v2, p2, v1

    aput v2, p2, v0

    const/4 v1, 0x2

    aput v2, p2, v1

    const/4 v1, 0x3

    aput v2, p2, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mRadius:I

    int-to-float v3, v2

    aput v3, p2, v1

    const/4 v1, 0x5

    int-to-float v3, v2

    aput v3, p2, v1

    const/4 v1, 0x6

    int-to-float v3, v2

    aput v3, p2, v1

    const/4 v1, 0x7

    int-to-float v2, v2

    aput v2, p2, v1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedScrollView;->setRadii([F)V

    return v0

    :cond_1
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mRadius:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/widget/SpenNestedScrollView;->setRadius(F)V

    return v0
.end method

.method private updateScrollBarThumb(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$drawable;->setting_scrollbar_thumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    const/16 p2, 0x1d

    if-lt v1, p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    :try_start_0
    const-class p2, Landroid/view/View;

    const-string v1, "mScrollCache"

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v3, "scrollBar"

    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string/jumbo v3, "setVerticalThumbDrawable"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v2

    invoke-virtual {p2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addButton(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addButtonNextToCloseInTitle(IILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addButtonNextToClose(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs addHeaderButtonInTitle(ILandroid/view/View$OnClickListener;I[Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->addHeaderButton(ILandroid/view/View$OnClickListener;I[Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addViewInTop(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public changeContentRule(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mScrollBarThumbOffset:[I

    xor-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->updateScrollBarThumb(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mConsumedListener:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setOnCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->close()V

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    return-void
.end method

.method public getChildHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getChildWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientation:I

    return v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    return-object v0
.end method

.method public hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideCloseButton()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonVisibility(I)Z

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public requestCloseButtonAccessibilityFocus()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->requestCloseButtonAccessibilityEvent(I)Z

    move-result v0

    return v0
.end method

.method public scrollContentToPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    return-void
.end method

.method public setAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hasAnimation:Z

    return-void
.end method

.method public setButtonStateChanged(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setButtonStateChanged(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setCloseButtonDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setOnCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCloseButtonVisibility(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setCloseButtonVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setContentTopMargin(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentVerticalScrollBarEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, p1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0, p1, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientation:I

    if-ne v2, v1, :cond_1

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_popup_width_v60:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_popup_landscape_width:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;->onOrientationChanged(I)V

    :cond_2
    return-void
.end method

.method public setOrientationChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mOrientationChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;

    return-void
.end method

.method public setRoundedBackground(FIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mChild:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollBarThumbOffset(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mScrollBarThumbOffset:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mScrollBarThumbOffset:[I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mScrollBarThumbOffset:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-void
.end method

.method public setTitleText(I)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setText(I)Landroid/widget/TextView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitleText(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->setText(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitleVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mTitle:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mContentBody:Landroidx/core/widget/NestedScrollView;

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setRadiusInScrollView(Landroid/view/View;Z)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVisibility("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") hasAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hasAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPopupType"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hasAnimation:Z

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(IZ)V

    return-void
.end method

.method public setVisibility(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") isShown()="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isAnimation="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SpenSettingPopupType"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->cancelAnimation()V

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->showAnimation()Z

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    return-void
.end method

.method public showAnimation()Z
    .locals 2

    const-string v0, "SpenSettingPopupType"

    const-string/jumbo v1, "showAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->mPopupAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->showAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
