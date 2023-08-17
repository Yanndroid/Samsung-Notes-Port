.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenSetting;
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenSettingUI;
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenFavoriteSettingUI;
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfig;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;
    }
.end annotation


# static fields
.field public static final COLOR_FROM_EYEDROPPER:I = 0x2

.field public static final COLOR_FROM_NONE:I = 0x0

.field public static final COLOR_FROM_PICKER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenSettingPenMiniLayout"

.field private static final UPDATE_ALL:I = 0x3f

.field private static final UPDATE_COLOR:I = 0x4

.field private static final UPDATE_OPACITY:I = 0x10

.field private static final UPDATE_PATTERN:I = 0x8

.field private static final UPDATE_PEN:I = 0x2

.field private static final UPDATE_SIZE:I = 0x1

.field private static final UPDATE_WIDTH:I = 0x20

.field public static final VIEW_MODE_MINI_HOME:I = 0x1

.field public static final VIEW_MODE_MINI_PEN_COLOR:I = 0x8

.field public static final VIEW_MODE_MINI_PEN_SIZE:I = 0x4

.field public static final VIEW_MODE_MINI_PEN_TYPE:I = 0x2


# instance fields
.field private mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

.field private mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;

.field private mChildViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;

.field private final mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

.field private mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mIsSupportEyedropper:Z

.field private mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

.field private final mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

.field private mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

.field private final mPenAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

.field private mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

.field private final mPenDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

.field private mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

.field private mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

.field private mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

.field private final mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

.field private final mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mIsSupportEyedropper:Z

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->construct(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZLjava/util/List;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mIsSupportEyedropper:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->construct(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->changePen(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->updateView(IZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->changeCurrentSize(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;I[F)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->changeCurrentColor(I[F)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mChildViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

    return-object p0
.end method

.method private changeCurrentColor(I[F)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateColor info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v4, p2, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SpenSettingPenMiniLayout"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-object p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v4, p2, v1

    aput v4, p1, v1

    aget v1, p2, v3

    aput v1, p1, v3

    aget p2, p2, v2

    aput p2, p1, v2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    iget p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result p1

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private changeCurrentSize(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private changePen(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentPen(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private construct(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-direct {v0, p1, p4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->containsParticleSizePen()Z

    move-result v5

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->containsAlphaChangeablePen()Z

    move-result p4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setEnableAlphaChange(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->initView(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZI)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    invoke-direct {p2, p1, p0, p5}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;I)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->setDisallowLabel(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setSliderListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnSliderListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;ZI)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-direct {v0, p1, p0, p5}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    new-instance p5, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-direct {p5, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mIsSupportEyedropper:Z

    invoke-virtual {p5, v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initView(ZLjava/util/List;)V

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-virtual {p5, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setPalette(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setRecentColor(Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getPenNameList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->initView(Landroid/content/Context;Ljava/util/List;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->initView(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenAttrDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;)V

    if-eqz p4, :cond_0

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setContent(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setOnViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnViewModeChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setOnButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$OnButtonClickListener;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setViewMode(IZ)Z

    return-void
.end method

.method private setViewMode(IZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setViewMode() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setViewMode(IZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateView(IZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateView() targetChild="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-nez v0, :cond_0

    const-string p1, "PenManager is null"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "current info is invalid"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportAlphaChange(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportFixedWidthChange(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iget v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "updateView() -- COLOR"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    iget v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setColor(I[F)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    if-eqz v4, :cond_4

    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    const-string/jumbo v4, "updateView() -- PATTERN"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->isSupportParticleSize(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->setPatternInfo(Ljava/lang/String;F)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setPatternVisibility(Z)V

    :cond_4
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "updateView() -- PEN"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v7, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v8, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->setPenInfo(Ljava/lang/String;IIF)V

    :cond_5
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    if-eqz v4, :cond_6

    const-string/jumbo v4, "updateView() -- SIZE"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    iget v6, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v7, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setSizeLevel(II)V

    :cond_6
    const/4 v4, 0x0

    and-int/lit8 v6, p1, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    if-eqz v6, :cond_8

    const-string/jumbo v4, "updateView() -- OPACITY"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-virtual {v6, v4}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setOpacity(I)V

    :cond_7
    move v4, v5

    :cond_8
    const/16 v6, 0x20

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_9

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    if-eqz p1, :cond_9

    const-string/jumbo p1, "updateView() -- WIDTH"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setPenWidth(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_9
    move v5, v4

    :cond_a
    :goto_1
    if-eqz v5, :cond_b

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-virtual {p1, v2, v3, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->setAttributeVisibility(ZZZ)V

    :cond_b
    return-void
.end method


# virtual methods
.method public addRecentColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->addRecentColor([F)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mAttributeControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    :cond_7
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->close()V

    return-void
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic setBackgroundColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setChangeViewModeButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setChangeFavoriteButton(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ThemeUtil is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v1, :cond_0

    const-string v1, "NOT NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setColorTheme(I)V

    const/16 p1, 0x13

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->updateView(IZ)V

    return-void
.end method

.method public setCurrentColor(I[F)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentColor() from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SpenSettingPenMiniLayout"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setPickerColor([F)V

    return v3

    :cond_0
    if-ne p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mIsSupportEyedropper:Z

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setEyedropperColor(I)V

    return v3

    :cond_1
    return v0
.end method

.method public setCurrentPalette(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentPalette() paletteID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setCurrentPalette(I)V

    :cond_0
    return-void
.end method

.method public setDisallowSliderLabel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->setDisallowLabel(Z)V

    :cond_0
    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenSettingPenMiniLayout"

    const-string/jumbo v1, "setInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    const-string v1, "SpenSettingPenMiniLayout::setInfo()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->printInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setCurrentUIPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->updateView(IZ)V

    :cond_0
    return-void
.end method

.method public setLayoutOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLayoutConfigHelper;->getOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->saveViewState()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->setOrientation(I)V

    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->updateView(IZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mLayoutControl:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->restoreViewState()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->setParentOrientation(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnButtonClickListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mButtonClickListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnButtonClickListener;

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setPalette(Ljava/util/List;)V

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->updateView(IZ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "SpenSettingPenMiniLayout"

    const-string v0, "Invalid paletteList information"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    :cond_0
    return-void
.end method

.method public setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V

    :cond_0
    return-void
.end method

.method public setPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/pencommon/PenInfoChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

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

    const-string v0, "SpenSettingPenMiniLayout"

    const-string/jumbo v1, "setPenInfoList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->setUIPenInfoList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mPenManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenSettingPenManager;->getCurrentUIPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->updateView(IZ)V

    :cond_0
    return-void
.end method

.method public setRecentColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setRecentColor(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mColorControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V

    :cond_0
    return-void
.end method

.method public setSliderLabelGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelControl:Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniSliderLabelControl;->setLabelGravity(I)V

    :cond_0
    return-void
.end method

.method public setSliderLabelListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mSliderLabelListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnSliderLabelListener;

    return-void
.end method

.method public setViewMode(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->setViewMode(IZ)Z

    move-result p1

    return p1
.end method

.method public setViewModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->mChildViewModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$OnViewModeChangedListener;

    return-void
.end method
