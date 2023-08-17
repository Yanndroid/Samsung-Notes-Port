.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface;


# static fields
.field private static final MAX_PEN_COUNT_WITHOUT_SCROLL:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SpenPenLayout"


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private final mPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

.field private mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

.field private mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

.field private mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

.field private mSupportPenPreview:Z

.field private mTargetPen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mSupportPenPreview:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->construct(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    return-object p0
.end method

.method private adjustLayout(Landroid/content/Context;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    if-nez p3, :cond_1

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mDefaultHeight:I

    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {p1, p0, v0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->setLayout(Landroid/widget/FrameLayout;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;I)V

    :goto_0
    return-void
.end method

.method private adjustPenLayout(IIILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_select_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_unselect_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->setSelectedGuideInfo(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->setPenMargin(III)V

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mSupportPenPreview:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_marker_preview_margin:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sget p2, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_marker_preview_margin_top:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_pen_preview:I

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_preview_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_preview_margin_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p3, v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->setPenPreviewInfo(III)V

    iget-object p3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {p3, p1, p2, p4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->setPenPreviewExceptInfo(IILjava/util/List;)V

    :cond_1
    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_pen_pen:I

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setOnPenClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_common_popup_width_v60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mDefaultWidth:I

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_popup_pen_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mDefaultHeight:I

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mDefaultWidth:I

    invoke-direct {v2, p1, v3, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    sget p1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_scroll_padding_start:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->setPadding(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_preview_width_minus_overlap_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->setExtraValue(I)V

    return-void
.end method

.method private getMarkerPenPosList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Marker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Highlighter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private selectPen(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectPen() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->setPenInfo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private setVisiblePen(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->findPenView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not Existed Pen. ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPenLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->setVisibleChild(Landroid/view/View;Z)Z

    return-void
.end method

.method private updateChildPosition(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScrollPosition() penName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->isSupportScroll()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->getScrollWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->setVisiblePen(Ljava/lang/String;)V

    return v1

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mTargetPen:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method private updateUI(Ljava/lang/String;IIFZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateUI() penName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " particleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->setPenInfo(Ljava/lang/String;IIFZ)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mTargetPen:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getSelectedPenPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mTargetPen:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->isSupportScroll()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenScrollManager:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenScrollManager;->getScrollWidth()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mTargetPen:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->updateChildPosition(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mTargetPen:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;IIFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->updateUI(Ljava/lang/String;IIFZ)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->updateChildPosition(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPenList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mDefaultWidth:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-ge v2, v4, :cond_1

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_start_end_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_space:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v3, v5

    move v5, v2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_2

    sget v2, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_more_pen_start_end_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_start_end_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_space:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v7, v5

    move v5, v2

    move v2, v3

    move v3, v7

    goto :goto_0

    :cond_2
    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_scroll_end_margin:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sget v6, Lcom/samsung/android/spen/R$dimen;->setting_pen_layout_pen_item_more_space:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v1, v2

    sub-int/2addr v2, v3

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    move v2, v4

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->adjustLayout(Landroid/content/Context;IZ)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->getMarkerPenPosList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v5, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->adjustPenLayout(IIILjava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayout;->mPenLayout:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPensView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPreviewPenListControl;->setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setUnselectedPen()V
    .locals 0

    return-void
.end method
