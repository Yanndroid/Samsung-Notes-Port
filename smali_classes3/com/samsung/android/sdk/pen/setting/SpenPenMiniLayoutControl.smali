.class Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;
    }
.end annotation


# static fields
.field private static final CHANGE_BOUNDS_DURATION:I = 0x190

.field private static final FADE_IN_DURATION:I = 0x96

.field private static final FADE_OUT_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "SpenPenMiniLayoutControl"

.field public static final VIEW_MODE_COLOR_LAYOUT:I = 0x8

.field public static final VIEW_MODE_NORMAL:I = 0x1

.field public static final VIEW_MODE_PATTERN_LAYOUT:I = 0x10

.field public static final VIEW_MODE_PEN_LAYOUT:I = 0x2

.field public static final VIEW_MODE_SIZE_LAYOUT:I = 0x4


# instance fields
.field private final SETTING_BG_DIMMED_COLOR:I

.field private final SETTING_IC_ENABLED_COLOR:I

.field private mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;

.field private mChangeFavoriteButtonClickListener:Landroid/view/View$OnClickListener;

.field private mColorGroup:Landroid/view/ViewGroup;

.field private final mColorItemClickListener:Landroid/view/View$OnClickListener;

.field private mColorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

.field private mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

.field private final mFooterButtonClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderButton:Landroid/widget/ImageView;

.field private mHeaderString:Ljava/lang/String;

.field private mIsInitialized:Z

.field private mMiniHomeTransition:Landroid/transition/TransitionSet;

.field private mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

.field private mPatternView:Landroid/view/View;

.field private mViewControl:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;",
            "Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;",
            ">;"
        }
    .end annotation
.end field

.field private mViewMode:I

.field private mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;I)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorItemClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_favorite_pens:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderString:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/spen/R$color;->setting_handwriting_icon_enable_color:I

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->SETTING_IC_ENABLED_COLOR:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    sget v0, Lcom/samsung/android/spen/R$color;->mini_setting_background_dimmed_color:I

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->SETTING_BG_DIMMED_COLOR:I

    new-instance p2, Ljava/util/EnumMap;

    const-class v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->initTransition()V

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setOrientation(IZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->changeMode(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mChangeFavoriteButtonClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewMode:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setEnvironment(IZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private addFooter(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    sget p1, Lcom/samsung/android/spen/R$drawable;->spen_ripple_effect_drawable:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->SETTING_IC_ENABLED_COLOR:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addDefaultFooterView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addHeader(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addDefaultHeaderView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/spen/R$drawable;->favorite_off_line_small:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    sget p2, Lcom/samsung/android/spen/R$drawable;->spen_ripple_effect_drawable:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->SETTING_IC_ENABLED_COLOR:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setHeaderTooltip(Z)V

    return-void
.end method

.method private addPopupView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;I)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;->getPopupView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->addPopupView(Landroid/view/View;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;->getViewMode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private changeMode(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->notifyModeChanged(I)V

    :cond_0
    return-void
.end method

.method private clearView()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->clearView()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPopupId(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getSizePopupId()I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getPenPopupId()I

    move-result p1

    return p1

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getColorPopupId()I

    move-result p1

    return p1

    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getPatternPopupId()I

    move-result p1

    return p1

    :cond_4
    sget p1, Lcom/samsung/android/spen/R$id;->content_area:I

    return p1
.end method

.method private getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    return-object p1
.end method

.method private initLayout()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewOrientation()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSettingLayoutFactory;->createSettingLayoutHelper(I)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->createContentParam()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->makeItemView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getPenId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->createPenParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->needColorGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    sget-object v3, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorItemClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->makeItemView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getColorId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->makeItemView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mPatternView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getPatternId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mPatternView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorItemClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->makeItemView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getColorGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->createColorParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->ATTRIBUTE:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->makeItemView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v5}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getSizeId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->createSizeParam(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getSizePopupId()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addPopupView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getPenPopupId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addPopupView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;I)V

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getColorPopupId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addPopupView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;I)V

    if-nez v2, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;->getPatternPopupId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addPopupView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;I)V

    return-void
.end method

.method private initParent()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSettingLayoutFactory;->createPopupLayoutHelper(I)Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setLayoutInterface(Lcom/samsung/android/sdk/pen/setting/SpenMiniPopupLayoutInterface;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addHeader(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addFooter(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->initTransition()V

    return-void
.end method

.method private initTransition()V
    .locals 7

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mMiniHomeTransition:Landroid/transition/TransitionSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mMiniHomeTransition:Landroid/transition/TransitionSet;

    new-instance v1, Landroid/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v5, 0x190

    invoke-virtual {v1, v5, v6}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    new-instance v1, Landroid/transition/Fade;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mMiniHomeTransition:Landroid/transition/TransitionSet;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    return-void
.end method

.method private makeItemView(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;->getNormalView(Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private needColorGroup()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;->onViewModeChanged(I)V

    :cond_0
    return-void
.end method

.method private setEnvironment(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->CLOSE:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    if-eq p1, v1, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    move v2, v3

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;->BACK:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAccessibility;->requestAccessibilityFocus(Landroid/view/View;)V

    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;->setButtonType(Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton$Type;Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p2, v3}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setFooterDividerEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getPopupId(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setFooterTopToBottom(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setContentVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setHeaderGroupVisibility(I)V

    return-void
.end method

.method private setHeaderTooltip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setOrientation(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), initialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->setOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->clearView()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorView:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mPatternView:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    new-instance p2, Landroid/transition/ChangeBounds;

    invoke-direct {p2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-static {p1, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->initParent()V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->initLayout()V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewMode:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(IZ)Z

    return-void
.end method

.method private setViewMode(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;IZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;->getViewMode()I

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;->setViewMode(IZ)V

    :cond_1
    invoke-interface {p1, p4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewModeInterface;->setNormalViewTooltip(Z)V

    return-void
.end method

.method private setViewOrientation()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->setViewOrientation(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenPenMiniLayoutControl"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mFooterButton:Lcom/samsung/android/sdk/pen/setting/SpenMiniCloseButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mPatternView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mCurrentLayoutHelper:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenSettingLayoutInterface;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mMiniHomeTransition:Landroid/transition/TransitionSet;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mChangeFavoriteButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mHeaderString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    return-void
.end method

.method public restoreViewState()V
    .locals 2

    const-string v0, "SpenPenMiniLayoutControl"

    const-string v1, "restoreViewState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->restoreViewState()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public saveViewState()V
    .locals 2

    const-string v0, "SpenPenMiniLayoutControl"

    const-string v1, "saveViewState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->saveViewState()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setChangeFavoriteButton(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mChangeFavoriteButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setContent(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;)V
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->ATTRIBUTE:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-virtual {p1, v0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-virtual {p1, p2, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewControl:Ljava/util/EnumMap;

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-virtual {p1, p2, p4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->initLayout()V

    return-void
.end method

.method public setOnButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;

    return-void
.end method

.method public setOnViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOrientation() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mIsInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setOrientation(IZ)V

    return-void
.end method

.method public setPatternVisibility(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPatternViewVisibility() isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenMiniLayoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->getViewControl(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;)Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mPatternView:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mPatternView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mColorView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x10

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewMode:I

    if-ne v2, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->changeMode(I)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewMode:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->changeMode(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setViewMode(IZ)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    move v3, v1

    :goto_0
    move v4, v3

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_0
    if-ne p1, v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    move v3, v1

    move v1, v2

    move v4, v1

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    if-ne p1, v3, :cond_3

    move v4, v1

    move v1, v2

    move v3, v1

    move v5, v3

    goto :goto_2

    :cond_3
    const/16 v3, 0x10

    if-ne p1, v3, :cond_6

    move v5, v1

    move v1, v2

    move v3, v1

    move v4, v3

    :goto_2
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mViewMode:I

    if-eqz p2, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mParent:Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->mMiniHomeTransition:Landroid/transition/TransitionSet;

    invoke-static {v6, v7}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_4
    if-ne p1, v2, :cond_5

    move v0, v2

    :cond_5
    sget-object v6, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PEN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v6, v1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;IZZ)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->ATTRIBUTE:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v1, v3, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;IZZ)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->COLOR:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v1, v4, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;IZZ)V

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;->PATTERN:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;

    invoke-direct {p0, v1, v5, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$ControlType;IZZ)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setHeaderTooltip(Z)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setEnvironment(IZ)V

    return v2

    :cond_6
    return v0
.end method
