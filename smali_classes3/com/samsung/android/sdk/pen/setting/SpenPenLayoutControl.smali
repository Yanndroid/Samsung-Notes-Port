.class Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FAVORITE_ON_COLOR:I = -0x5200

.field private static final OPACITY_LAYOUT_CHANGE_DURATION:I = 0x190

.field private static final OPACITY_LAYOUT_FADE_IN_DURATION:I = 0xc8

.field private static final OPACITY_LAYOUT_FADE_IN_START_DELAY:I = 0xc8

.field private static final OPACITY_LAYOUT_FADE_OUT_DURATION:I = 0x64

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenPenLayoutControl"

.field public static final VIEW_COLOR:I = 0x4

.field public static final VIEW_SIZE:I = 0x1

.field public static final VIEW_TYPE:I = 0x2


# instance fields
.field private mAlphaView:Landroid/view/View;

.field private mColorView:Landroid/view/View;

.field private mContentBody:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mFavoriteButton:Landroid/widget/ImageView;

.field private mFavoriteButtonColor:I

.field private mFavoriteChangeButton:Landroid/view/View;

.field private mFavoriteChangeButtonParent:Landroid/view/ViewGroup;

.field private mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

.field private mOrientation:I

.field private mPatternView:Landroid/view/View;

.field private mPenView:Landroid/view/View;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mSizeView:Landroid/view/View;

.field private mUIModeChangeButton:Landroid/view/View;

.field private mWidthView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButtonColor:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    return-void
.end method

.method private getFavoriteButtonColor()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButtonColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/spen/R$color;->setting_handwriting_icon_enable_color:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButtonColor:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButtonColor:I

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setOpacitySeekBarTransition(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSceneRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x64

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method private setOrientation(I)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientation() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->isVisiblePatternView()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->isVisibleAlphaView()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->isVisibleWidthView()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->getViewMode()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {v5}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->detachChild()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {v5}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->close()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    move v0, v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingPortraitLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v5}, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingPortraitLayout;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v5}, Lcom/samsung/android/sdk/pen/setting/SpenPenSettingLandscapeLayout;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContentBody:Landroid/widget/LinearLayout;

    invoke-interface {p1, v5}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setContentView(Landroid/widget/LinearLayout;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSizeView:Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mPenView:Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mColorView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mPatternView:Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mAlphaView:Landroid/view/View;

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mWidthView:Landroid/view/View;

    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->attachChild(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setViewMode(I)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {p1, v2, v3, v1}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setAttributeVisibility(ZZZ)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setPatternViewVisibility(Z)Z

    return-void
.end method


# virtual methods
.method public addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mPenView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSizeView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButton:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButtonParent:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mColorView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mPatternView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mAlphaView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mUIModeChangeButton:Landroid/view/View;

    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->getActionButtonCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContentBody:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getFavoriteButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFavoriteChangeButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButton:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    return v0
.end method

.method public getOpacitySceneRoot()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getUIModeButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mUIModeChangeButton:Landroid/view/View;

    return-object v0
.end method

.method public setAttributeVisibility(ZZZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAttributeVisibility() alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setAttributeVisibility(ZZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setContentView(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContentBody:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mPenView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSizeView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mColorView:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mPatternView:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mAlphaView:Landroid/view/View;

    iput-object p7, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mWidthView:Landroid/view/View;

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setOrientation(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenPenLayoutControl"

    const-string p2, "Invalid param."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFavoriteButton(Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsButton;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenVoiceAssistantAsButton;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setFavoriteButtonChecked(ZZ)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFavoriteButtonChecked() isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenPenLayoutControl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    sget v2, Lcom/samsung/android/spen/R$drawable;->star_on:I

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_remove_pen_from_favorite:I

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    const/16 v5, -0x5200

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_favorite_off:I

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_add_favorite_pen:I

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getFavoriteButtonColor()I

    move-result v5

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteButton:Landroid/widget/ImageView;

    const v2, 0x3f99999a    # 1.2f

    const-wide/16 v3, 0x64

    const/4 v5, 0x1

    const-wide/16 v6, 0x12c

    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->scaleUpDownAnimation(Landroid/view/View;FJIJIJ)V

    iget-object v11, v0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButton:Landroid/view/View;

    if-eqz v11, :cond_2

    const v12, 0x3fb33333    # 1.4f

    const-wide/16 v13, 0xc8

    const/4 v15, 0x1

    const-wide/16 v16, 0xc8

    const/16 v18, 0x1

    const-wide/16 v19, 0xc8

    invoke-static/range {v11 .. v20}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->scaleUpDownAnimation(Landroid/view/View;FJIJIJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setFavoriteChangeButton(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButton:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButtonParent:Landroid/view/ViewGroup;

    sget v0, Lcom/samsung/android/spen/R$drawable;->favorite_icon_ripple_drawable:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setFavoriteChangeButtonSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mFavoriteChangeButtonParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setLayoutOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutOrientation() New="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mContentBody:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method public setOpacitySceneRoot(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method public setPatternViewVisibility(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPatternViewVisibility() isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setPatternViewVisibility(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUIModeButton(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mUIModeChangeButton:Landroid/view/View;

    return-void
.end method

.method public setViewMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->mLayoutInterface:Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenLayoutInterface;->setViewMode(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
