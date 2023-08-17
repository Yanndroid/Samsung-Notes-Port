.class public Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;,
        Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;
    }
.end annotation


# static fields
.field public static final ITEM_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SpenOptionMenu"


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mHideListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;

.field private mInOutAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

.field private mIsHiding:Z

.field private mMenuItemClickListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mIsHiding:Z

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$3;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->requestAccessibilityFocus()V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->hide()V

    return-void
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mIsHiding:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->notifyMenuItemClicked(I)V

    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->initView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->setShadowAlpha(Landroid/view/View;F)Z

    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;->REGULAR:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;

    new-array v5, v0, [Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setTypeFace(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText$FontName;[Landroid/widget/TextView;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mInOutAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    return-void
.end method

.method private hide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mHideListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;->onHide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private notifyMenuItemClicked(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mMenuItemClickListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;->onMenuItemClicked(I)V

    :cond_0
    return-void
.end method

.method private requestAccessibilityFocus()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAccessibility;->requestAccessibilityFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mContentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mInOutAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mInOutAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mHideListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mMenuItemClickListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;

    return-void
.end method

.method public getItemID(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public hide(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide() animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenOptionMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mIsHiding:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mIsHiding:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mInOutAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$2;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->hide()V

    :goto_0
    return-void
.end method

.method public initView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SpenOptionMenu"

    const-string v0, "onTouchEvent() OutSideTouched()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->hide(Z)V

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnHideListener(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mHideListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnHideListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mMenuItemClickListener:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show() animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenOptionMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->mInOutAnimation:Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$1;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenPopupInOutAnimation;->showAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->requestAccessibilityFocus()V

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
