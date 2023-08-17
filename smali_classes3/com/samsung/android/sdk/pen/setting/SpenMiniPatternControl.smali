.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;
.super Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenMiniPatternControl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitComplete:Z

.field private mNormalView:Landroid/widget/FrameLayout;

.field private mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

.field private mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

.field private mPatternItem:Landroid/widget/ImageView;

.field private mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

.field private mPenName:Ljava/lang/String;

.field private mSize:F

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mViewMode:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->initControl()V

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mSize:F

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->getDrawableId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternItem:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    return-object p0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "SpenMiniPatternControl"

    const-string v1, "Resource is not founded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method private getItemResource()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_color_attr_mini_land_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_color_attr_mini_layout:I

    :goto_0
    return v0
.end method

.method private getPopupResource()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_color_land_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_color_layout:I

    :goto_0
    return v0
.end method

.method private initControl()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPatternControl$OnPatternChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    return-void
.end method

.method private updatePatternItem()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPenName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternItem:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mSize:F

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->getResourceString(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternItem:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePatternPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPenName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPattern(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setSize(FZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternItem:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mNormalView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mViewMode:I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternItem:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    return-void
.end method

.method public getNormalView(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mNormalView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->getItemResource()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mNormalView:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->color_item:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternItem:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->updatePatternItem()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mNormalView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public getPopupView()Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->getPopupResource()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    sget v1, Lcom/samsung/android/spen/R$drawable;->setting_mini_sub_popup_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternControl:Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPatternControl;->setPatternLayout(Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->updatePatternPopup()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mViewMode:I

    return v0
.end method

.method public setNormalViewTooltip(Z)V
    .locals 0

    return-void
.end method

.method public setOnPatternChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl$OnPatternChangedListener;

    return-void
.end method

.method public setPatternInfo(Ljava/lang/String;F)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPenName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mSize:F

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mViewMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->updatePatternItem()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->updatePatternPopup()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->updatePatternPopup()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->updatePatternItem()V

    :goto_0
    return-void
.end method

.method public setViewMode(IZ)V
    .locals 1

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mInitComplete:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mViewMode:I

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mPatternPopup:Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenRectPatternLayout;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPatternControl;->mViewMode:I

    :cond_3
    return-void
.end method
