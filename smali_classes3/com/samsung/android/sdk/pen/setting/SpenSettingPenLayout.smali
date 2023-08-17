.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenFavoriteSettingUI;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenPaletteChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$FavoriteAnimationEndListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$PaletteActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ColorPickerChangedListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenPenSpuitViewActionListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenColorSettingViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenColorPickerViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenPenSpuitViewListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;
    }
.end annotation


# static fields
.field public static final LAYOUT_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final LAYOUT_ORIENTATION_PORTRAIT:I = 0x1

.field public static final PICKER_VIEW_MODE_GRADIENT:I = 0x1

.field public static final PICKER_VIEW_MODE_SWATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenSettingPenLayout"

.field private static final UPDATE_ALL:I = 0x3f

.field private static final UPDATE_COLOR:I = 0x4

.field private static final UPDATE_OPACITY:I = 0x10

.field private static final UPDATE_PATTERN:I = 0x8

.field private static final UPDATE_PEN:I = 0x2

.field private static final UPDATE_SIZE:I = 0x1

.field private static final UPDATE_WIDTH:I = 0x20

.field public static final VIEW_MODE_ALL:I = 0x7

.field public static final VIEW_MODE_SIZE_COLOR:I = 0x5


# instance fields
.field private mBaseContentTopMargin:I

.field private final mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

.field private mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mEnableOpacityChange:Z

.field private mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

.field private mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;

.field private final mIsSupportEyedropper:Z

.field private mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

.field private final mOpacityChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

.field private mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

.field private final mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

.field private mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

.field private mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

.field private final mPenActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

.field private mPenContext:Landroid/content/Context;

.field private mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

.field private mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

.field private final mPenWidthChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

.field private mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;

.field private final mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

.field private mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

.field private mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;

.field private mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Z)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenWidthChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    const-string v0, "SpenSettingPenLayout"

    const-string v1, "SpenSettingPenLayout() - construct()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mIsSupportEyedropper:Z

    new-instance p6, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {p6, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;ZLjava/util/List;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenWidthChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    const-string v0, "SpenSettingPenLayout"

    const-string v1, "SpenSettingPenLayout() - construct()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mIsSupportEyedropper:Z

    new-instance p6, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {p6, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->checkOpacitySceneRoot()V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->updateView(IZ)V

    return-void
.end method

.method private checkOpacitySceneRoot()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getOpacitySceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setOpacitySceneRoot(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method private construct(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-direct {v0, p1, p6}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    new-instance p6, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-direct {p6, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    const/4 v0, 0x1

    invoke-virtual {p6, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setLayoutOrientation(I)V

    iput-boolean p7, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mEnableOpacityChange:Z

    iget-object p6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p6}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->containsParticleSizePen()Z

    move-result p6

    if-eqz p7, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->containsAlphaChangeablePen()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setEnableAlphaChange(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct() makeAlphaView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p7, " enableAlphaChange="

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    const-string v1, "SpenSettingPenLayout"

    invoke-static {v1, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p6, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->initView(Landroid/content/Context;ZZ)V

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->initColorControl(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V

    if-eqz p6, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->initPatternControl()V

    :cond_1
    return-void
.end method

.method private initColorControl(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;",
            ")V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mIsSupportEyedropper:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-super/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->initColorControl(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;ZLjava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setOnColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControl$OnColorChangeListener;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V

    return-void
.end method

.method private initPatternControl()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPatternLayout(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;ZZ)V
    .locals 10

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_content_margin_top:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mBaseContentTopMargin:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentTopMargin(I)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeChangeListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    invoke-direct {v0, p1, v8}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getPenNameList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->setPenList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mIsSupportEyedropper:Z

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayoutInterface$OnDataChangedListener;)V

    :cond_1
    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenWidthChangedListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setContentView(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    sget p1, Lcom/samsung/android/spen/R$string;->pen_string_close_any:I

    new-array p2, v8, [Ljava/lang/Object;

    const/4 p3, 0x0

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_close_pen_settings:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-virtual {v9, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initView density = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenSettingPenLayout"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initView densityDpi = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initView widthPixels = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initView heightPixels = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateView(IZ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateView() info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " animation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SpenSettingPenLayout"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-nez v3, :cond_0

    const-string v1, "PenManager is null"

    :goto_0
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "current info is null"

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportAlphaChange(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v7, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportFixedWidthChange(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget v9, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    iget v9, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    const-string v9, "[BEFORE] updateView() pen=%s, sizeLevel=%d, color=%08X"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iget v9, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v8

    iput v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    aput-object v8, v7, v10

    iget v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    iget v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const-string v8, "[AFTER] updateView() pen=%s, sizeLevel=%d, color=%08X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v7, v1, 0x2

    if-ne v7, v12, :cond_2

    iget-object v13, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    iget-object v14, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v15, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v7, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v9, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual/range {v13 .. v18}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->setPenInfo(Ljava/lang/String;IIFZ)Z

    :cond_2
    and-int/lit8 v7, v1, 0x1

    if-ne v7, v11, :cond_4

    const-string/jumbo v7, "updateView() -- SIZE"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-boolean v8, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mEnableOpacityChange:Z

    if-eqz v8, :cond_3

    if-eqz v5, :cond_3

    const/high16 v8, -0x1000000

    const v9, 0xffffff

    and-int/2addr v7, v9

    or-int/2addr v7, v8

    :cond_3
    iget-object v8, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    const/4 v9, 0x0

    iget v11, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v8, v9, v11, v7}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->setPenInfo(Ljava/lang/String;II)V

    :cond_4
    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    if-eqz v7, :cond_5

    and-int/lit8 v7, v1, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_5

    const-string/jumbo v7, "updateView() -- ALPHA"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    iget v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->setColor(I)V

    :cond_5
    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    if-eqz v7, :cond_6

    and-int/lit8 v7, v1, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    const-string/jumbo v7, "updateView() -- WIDTH"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    iget-object v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v9, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v11, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v7, v8, v9, v11}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->setPenInfo(Ljava/lang/String;II)V

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    iget-boolean v8, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-virtual {v7, v8, v10}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->setPenWidth(ZZ)V

    :cond_6
    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v7, v5, v6, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setAttributeVisibility(ZZZ)Z

    and-int/lit8 v2, v1, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    const-string/jumbo v2, "updateView() -- COLOR"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget v5, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[F)V

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "updateView() -- PATTERN"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v2, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportParticleSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget-object v4, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPattern(Ljava/lang/String;)Z

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v2, v3, v10}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setSize(FZ)V

    :cond_8
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setPatternViewVisibility(Z)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public addActionButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->getActionButtonCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonVisibility(I)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic addRecentColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->addRecentColor([F)V

    return-void
.end method

.method public close()V
    .locals 3

    const-string v0, "SpenSettingPenLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternLayout:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mOpacityLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenOpacityLayout;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mWidthLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->close()V

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;

    :cond_5
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->close()V

    const-string v1, "close()-end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic closeColorPickerPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->closeColorPickerPopup()V

    return-void
.end method

.method public bridge synthetic closeColorSettingPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->closeColorSettingPopup()V

    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getActionButtonCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getColorPickerColor([F)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorPickerColor([F)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getColorPickerViewMode()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorPickerViewMode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getColorSettingSelectList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getEyedropperColor()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->getEyedropperColor()I

    move-result v0

    return v0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPenSizeIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mSizeLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayout;->getSelectedIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public hideColorSpoid()V
    .locals 2

    const-string v0, "SpenSettingPenLayout"

    const-string v1, "hideColorSpoid()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->isColorSpoidVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->hideEyedropper()V

    :cond_0
    return-void
.end method

.method public bridge synthetic hideEyedropper()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->hideEyedropper()V

    return-void
.end method

.method public bridge synthetic isColorPickerPopupVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorPickerPopupVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isColorSettingPopupVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isColorSettingPopupVisible()Z

    move-result v0

    return v0
.end method

.method public isColorSpoidVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isEyedropperVisible()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEyedropperVisible()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->isEyedropperVisible()Z

    move-result v0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visibility change  view:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;->onVisibilityChanged(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public setChangeUIModeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getUIModeButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/spen/R$drawable;->setting_btn_minimized:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_shrink_pen_settings:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setUIModeButton(Landroid/view/View;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setChangeViewModeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getFavoriteChangeButton()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/spen/R$drawable;->favorite_off_line:I

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_change_to_mode:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_favorite_pen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addHeaderButtonInTitle(ILandroid/view/View$OnClickListener;I[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setFavoriteChangeButton(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setFavoriteChangeButtonSelected(Z)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setCloseButtonDescription(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setColorPickerChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ColorPickerChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setColorPickerCloseButtonType(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerCloseButtonType(I)V

    return-void
.end method

.method public bridge synthetic setColorPickerColor([F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerColor([F)V

    return-void
.end method

.method public bridge synthetic setColorPickerViewMode(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewMode(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$ColorPickerModeChangedListener;)V

    return-void
.end method

.method public bridge synthetic setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorPickerVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public bridge synthetic setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingSelectItemEventListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnSelectItemEventListener;)V

    return-void
.end method

.method public bridge synthetic setColorSettingSelectList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingSelectList(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorSettingVisibilityChangeListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public setColorSpoidPosition(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperPosition(II)V

    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "NOT NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    const/16 p1, 0x13

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->updateView(IZ)V

    return-void
.end method

.method public bridge synthetic setCurrentPalette(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setCurrentPalette(I)V

    return-void
.end method

.method public bridge synthetic setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V

    return-void
.end method

.method public bridge synthetic setEyedropperColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperColor(I)V

    return-void
.end method

.method public bridge synthetic setEyedropperPosition(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperPosition(II)V

    return-void
.end method

.method public bridge synthetic setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public setFavoriteAnimation(ZLcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$FavoriteAnimationEndListener;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getContentView()Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getFavoriteButton()Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->registerViewForAni([Landroid/view/View;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v2, v3, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAlphaValue(JI)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAnimationEndListener(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    new-array p2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getFavoriteButton()Landroid/widget/ImageView;

    move-result-object v0

    aput-object v0, p2, v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getContentView()Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->unRegisterViewForAni([Landroid/view/View;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAlphaValue(JI)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setAnimationEndListener(Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation$AnimationEndListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->close()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    :goto_0
    return-void
.end method

.method public setFavoriteButton(Landroid/view/View$OnClickListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setFavoriteButton(Landroid/view/View$OnClickListener;Z)Z

    move-result p1

    return p1
.end method

.method public setFavoriteButton(Landroid/view/View$OnClickListener;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getFavoriteButton()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget p2, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_favorite_off:I

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_add_favorite_pen:I

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addHeaderButtonInTitle(ILandroid/view/View$OnClickListener;I[Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget p2, Lcom/samsung/android/spen/R$drawable;->note_setting_ic_favorite_off:I

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_add_favorite_pen:I

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addButtonInTitle(IILandroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    check-cast p2, Landroid/widget/ImageView;

    move-object v0, p2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setFavoriteButton(Landroid/widget/ImageView;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public setFavoriteButtonChecked(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setFavoriteButtonChecked(ZZ)V

    return-void
.end method

.method public setFavoriteButtonChecked(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setFavoriteButtonChecked(ZZ)V

    :cond_0
    return-void
.end method

.method public setFavoriteButtonChecked(ZZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setFavoriteButtonChecked(ZZ)V

    return-void
.end method

.method public setFavoriteListButton(Landroid/view/View$OnClickListener;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->setChangeViewModeButtonListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setFavoriteObjectVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->setObjectVisibility(I)V

    :cond_0
    return-void
.end method

.method public setHeaderVisibility(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleVisibility(I)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mBaseContentTopMargin:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentTopMargin(I)V

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenSettingPenLayout"

    const-string/jumbo v1, "setInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    const-string v1, "SpenSettingPenLayout::setInfo()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->printInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->updateView(IZ)V

    :cond_0
    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    return-void
.end method

.method public setLayoutOrientation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLayoutOrientation() orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->getLayoutOrientation()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setLayoutOrientation(I)V

    :cond_0
    return-void
.end method

.method public setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setColorLogListener(Lcom/samsung/android/sdk/pen/setting/SpenColorSAListener;)V

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPalette(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mColorLayout:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    return-void
.end method

.method public bridge synthetic setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V

    return-void
.end method

.method public bridge synthetic setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setPaletteChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$PaletteChangedListener;)V

    return-void
.end method

.method public setPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;)V

    :cond_0
    return-void
.end method

.method public setPenInfoList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenSettingPenLayout"

    const-string/jumbo v1, "setPenInfoList() in SpenSettingPenLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setUIPenInfoList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->updateView(IZ)V

    :cond_0
    return-void
.end method

.method public setPenSpuitActionListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenPenSpuitViewActionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperActionListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$EyedropperActionListener;)V

    return-void
.end method

.method public setPenSpuitVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenPenSpuitViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setEyedropperVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout$SettingViewListener;)V

    return-void
.end method

.method public bridge synthetic setRecentColor(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColor(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V

    return-void
.end method

.method public setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$SpenRecentColorChangedListener;

    return-void
.end method

.method public bridge synthetic setSelfClose(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->setSelfClose(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTitle() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    return-void
.end method

.method public setViewMode(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SpenSettingPenLayout"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenLayoutControl;->setViewMode(I)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    return-void
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mVisibilityListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$ViewListener;

    :cond_0
    return-void
.end method

.method public showColorPickerPopup()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showColorPickerPopup([F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic showColorSettingPopup()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showColorSettingPopup()V

    return-void
.end method

.method public showColorSpoid()V
    .locals 2

    const-string v0, "SpenSettingPenLayout"

    const-string/jumbo v1, "showColorSpoid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-super {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenColorControlPopupLayout;->showEyedropper([F)V

    :cond_0
    return-void
.end method

.method public startFavoriteAnimation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout;->mFavoriteInOutAnimation:Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->showAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilInOutAnimation;->hideAnimation()V

    :cond_1
    :goto_0
    return-void
.end method
