.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;,
        Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;
    }
.end annotation


# static fields
.field public static final FROM_EYEDROPPER:I = 0x8

.field public static final FROM_NONE:I = 0x0

.field public static final FROM_PALETTE:I = 0x2

.field public static final FROM_PICKER:I = 0x4

.field public static final FROM_RECENT:I = 0x1

.field public static final OPACITY_100:I = 0xff

.field private static final RECENT_PAGE_ID:I = 0x0

.field private static final RECENT_PAGE_INDEX:I = 0x0

.field private static final SHIFT_VALUE_MODE:I = 0x14

.field private static final SHIFT_VALUE_PALETTE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SpenPaletteViewControl"


# instance fields
.field private DEFAULT_PAGE_INDEX:I

.field private mColor:[F

.field private mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

.field private mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

.field private mColorTheme:I

.field private mColorUIInfo:I

.field private mContext:Landroid/content/Context;

.field private mFrom:I

.field private mHaveRecentPage:Z

.field private mIsColorInit:Z

.field private mOpacity:I

.field private mPageIndex:I

.field private mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

.field private mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

.field private final mPaletteViewActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

.field private mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

.field private onRecentColorSelectListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteViewActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->onRecentColorSelectListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    const/16 v0, 0xff

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mIsColorInit:Z

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mHaveRecentPage:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorTheme:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;-><init>(Landroid/content/Context;IZI)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->onRecentColorSelectListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl$OnColorChangeListener;)V

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    :goto_0
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->onEventButtonClick(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;IIZ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->onRecentColorSelect(IIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->onPaletteColorSelect(IIZ)V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;II[FI)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(II[FI)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->resetChecked(IZ)V

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setUIInfo(II)V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorChanged()V

    return-void
.end method

.method private clearChecked(IZ)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->clearChecked()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getColorIdxList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p1, v4, v1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getPickerButtonIdx()I

    move-result v0

    invoke-interface {p2, p1, v0, v1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    :cond_3
    return-void
.end method

.method private getChildIndex(II[FI)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getChildIndex([F)I

    move-result v1

    :cond_0
    return v1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {p2, p1, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getChildIndex(I[FI)I

    move-result p1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getPickerButtonIdx()I

    move-result p1

    return p1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getColorIdxList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private getColor(II[F)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "SpenPaletteViewControl"

    const-string p2, "currently, not necessary!!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorIndex(I)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getColor(II[F)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private getColorIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getColorIdxList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :cond_1
    return v1
.end method

.method private getCurrentPageIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getCurrentPage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static getFromType(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xfff

    return p0
.end method

.method private getOpacity(II)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorIndex(I)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getOpacity(II)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private getPaletteID(I)I
    .locals 0

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xfff

    return p1
.end method

.method private getTotalPageCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getPaletteSize()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewIndex(I)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getViewIndex(I)I

    move-result p1

    return p1
.end method

.method private haveRecentPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mHaveRecentPage:Z

    return v0
.end method

.method private initTable(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->initTable(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;)Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->initRecentPalette(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getPaletteData(I)Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->initDefinedPalette(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isRecentPage(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyColorChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteIDFromViewIdx(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mFrom:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result v0

    const-string v1, "notifyColorChanged()"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->showUIInfo(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyColorChanged() uiInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  savedUIInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    if-eq v0, v2, :cond_1

    const-string v2, "++++ NOT SAME ++++"

    goto :goto_0

    :cond_1
    const-string v2, "==== SAME ===="

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenPaletteViewControl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;->onColorChanged(I[FI)V

    return-void
.end method

.method private notifyColorSelected(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    if-eqz v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;->onColorSelected(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onEventButtonClick(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getButtonType(II)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->getValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;->onButtonClick(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private onPaletteColorSelect(IIZ)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setSelected(IIZZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorSelected(IIZ)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->clearChecked(IZ)V

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setSelected(IIZZ)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getPickerButtonIdx()I

    move-result p3

    const/4 v1, 0x0

    if-eq p2, p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->resetChecked(IZ)V

    const/4 p3, 0x3

    new-array p3, p3, [F

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColor(II[F)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getOpacity(II)I

    move-result p2

    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, p3, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(II[FI)Z

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setUIInfo(II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorChanged()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorIndex="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " color["

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p3, v1

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p3, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpenPaletteViewControl"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorSelected(IIZ)V

    return-void
.end method

.method private onRecentColorSelect(IIZ)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->onButtonClick(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->resetChecked(IZ)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorSelected(IIZ)V

    return v0
.end method

.method private resetChecked(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p1, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->clearChecked(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setColor(II[FI)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mIsColorInit:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColor() pageIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", s="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " v="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget v4, p3, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " opacity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SpenPaletteViewControl"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mFrom:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getTotalPageCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :goto_0
    move v0, v2

    goto :goto_3

    :cond_2
    :goto_1
    iput v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mFrom:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    :goto_2
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setColor() decide pageIndex="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mFrom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    const/4 p2, 0x3

    invoke-static {p3, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    return v0
.end method

.method private setPaletteVisibleColor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->setReverseMode(Z)V

    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getTotalPageCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->updateColor()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getPaletteData(I)Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->setPaletteVisibleColor(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setSelected(IIZZ)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setSelected() invalid pageIndex="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " childAt="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPaletteViewControl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setSelected(IZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getPickerButtonIdx()I

    move-result p4

    if-eq p2, p4, :cond_2

    return-void

    :cond_2
    const/4 p4, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getTotalPageCount()I

    move-result v0

    if-ge p4, v0, :cond_4

    if-ne p4, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p4, p2, p3, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setSelected(IIZZ)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setUIInfo(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteIDFromViewIdx(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    return-void
.end method

.method private showUIInfo(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteID(I)I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getFromType(I)I

    move-result p2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    const-string p2, "FROM_NONE"

    goto :goto_0

    :cond_0
    const-string p2, "FROM_EYEDROPPER"

    goto :goto_0

    :cond_1
    const-string p2, "FROM_PICKER"

    goto :goto_0

    :cond_2
    const-string p2, "FROM_PALETTE"

    goto :goto_0

    :cond_3
    const-string p2, "FROM_RECENT"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] PALETTEID="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " FROM="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ###"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPaletteViewControl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLayout(ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mFrom:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getChildIndex(II[FI)I

    move-result v1

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mFrom:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    iget v6, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getChildIndex(II[FI)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->getPickerButtonIdx()I

    move-result v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-direct {p0, v5, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->clearChecked(IZ)V

    iget v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-direct {p0, v5, v1, v3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setSelected(IIZZ)V

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPage(IZ)V

    :cond_4
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->resetChecked(IZ)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public addRecentColor([F)Z
    .locals 2

    const-string v0, "SpenPaletteViewControl"

    const-string v1, "addRecentColor() - From SpenSettingPenLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->addColor([F)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "recent control is not existed. so return false"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getColor([F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getColorUIInfo(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getCurrentPageIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    :cond_0
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteIDFromViewIdx(I)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public getColorUIInfo(II)I
    .locals 1

    shl-int/lit8 p2, p2, 0x14

    const/high16 v0, -0x100000

    and-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x8

    const v0, 0xfff00

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    return p1
.end method

.method public getOpacity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    return v0
.end method

.method public getPalette()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getCurrentPageIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteIDFromViewIdx(I)I

    move-result v0

    return v0
.end method

.method public getPaletteIDFromViewIdx(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getPaletteID(I)I

    move-result p1

    return p1
.end method

.method public getRecentColor()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->getRecentColors(Ljava/util/List;)Z

    return-object v0
.end method

.method public resetColor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mIsColorInit:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->resetChecked(IZ)V

    return-void
.end method

.method public setColor(I[FI)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(I[FIZ)V

    return-void
.end method

.method public setColor(I[FIZ)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    const-string/jumbo v0, "setColor()"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->showUIInfo(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteID(I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getFromType(I)I

    move-result p1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getViewIndex(I)I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(II[FI)Z

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->updateLayout(ZZ)V

    :cond_0
    return-void
.end method

.method public setColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorChangeListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnColorChangeListener;

    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorTheme:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setColorTheme(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setPaletteVisibleColor(Z)V

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->updateLayout(ZZ)V

    return-void
.end method

.method public setEyedropperColor(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result p1

    const/16 v1, 0xff

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(I[FI)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorChanged()V

    return-void
.end method

.method public setPalette(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getViewIndex(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPage(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl$OnPaletteActionListener;

    return-void
.end method

.method public setPaletteInfo(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result v0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    const-string/jumbo v3, "setPaletteInfo()"

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->showUIInfo(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPaletteInfo() paletteInfo.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenPaletteViewControl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->setPaletteInfo(Landroid/content/Context;Ljava/util/List;I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorDataHelper:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteDataHelper;->getPaletteSize()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPaletteInfo(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->initTable(I)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mIsColorInit:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPageIndex:I

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPage(IZ)V

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColor:[F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mOpacity:I

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(I[FIZ)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public setPaletteView(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteViewActionListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->haveRecentPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setPaletteView(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfigFactory;->createPaletteConfig(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;Landroid/content/Context;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public setPickerColor([F)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getCurrentPageIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->isRecentPage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->DEFAULT_PAGE_INDEX:I

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getPaletteIDFromViewIdx(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getColorUIInfo(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->setColor(I[FI)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->notifyColorChanged()V

    return-void
.end method

.method public setRecentColor(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->setRecentColors(Ljava/util/List;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mColorUIInfo:I

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->getFromType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->updateLayout(ZZ)V

    :cond_1
    return v0
.end method

.method public setRecentIndicatorSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewControl;->mPaletteConfig:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;->setRecentIndicatorSize(I)V

    return-void
.end method
