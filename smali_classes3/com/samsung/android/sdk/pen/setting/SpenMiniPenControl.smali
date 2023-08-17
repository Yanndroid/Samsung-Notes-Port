.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;
.super Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenControl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

.field private mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

.field private mInitComplete:Z

.field private mItemGroup:Landroid/widget/FrameLayout;

.field private mItemString:Ljava/lang/String;

.field private mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

.field private mPenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

.field private mViewMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mViewMode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->notifyDataChanged(Ljava/lang/String;)V

    return-void
.end method

.method private notifyDataChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;->onPenChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setCurrentPenInfo(Ljava/lang/String;IIF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput p3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput p4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    return-void
.end method

.method private updatePenItem()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;->setPenName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updatePenPopup()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v4, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v5, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v6, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->setPenInfo(Ljava/lang/String;IIFZ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    const-string v0, "SpenPenControl"

    const-string v1, "clearView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->clearView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getNormalView(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_mini_home_pen:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemGroup:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->setNormalViewTooltip(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->updatePenItem()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemGroup:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public getPopupView()Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->setPenList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->updatePenPopup()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mViewMode:I

    return v0
.end method

.method public initView(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/spen/R$string;->pen_string_pen_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemString:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    return-void
.end method

.method public setDataChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mDataChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl$OnDataChangedListener;

    return-void
.end method

.method public setNormalViewTooltip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenItem:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mItemString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setPenInfo(Ljava/lang/String;IIF)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->setCurrentPenInfo(Ljava/lang/String;IIF)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mViewMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->updatePenItem()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->updatePenPopup()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->updatePenPopup()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->updatePenItem()V

    :goto_0
    return-void
.end method

.method public setViewMode(IZ)V
    .locals 1

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mInitComplete:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mViewMode:I

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mPenPopup:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

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
    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenControl;->mViewMode:I

    :cond_3
    return-void
.end method
