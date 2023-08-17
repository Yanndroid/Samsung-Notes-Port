.class Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;
    }
.end annotation


# static fields
.field public static final NOT_SUPPORT_MODE_CHANGE:I = 0x2

.field public static final SUPPORT_MODE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenChangeStyleLayoutControl"


# instance fields
.field private mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

.field private mColorView:Landroid/view/View;

.field private mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;

.field private mNoFillView:Landroid/view/View;

.field private mSizeView:Landroid/view/View;

.field private mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

.field private mTabParent:Landroid/widget/LinearLayout;

.field private mViewMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mViewMode:I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;

    return-object p0
.end method

.method private initTabView(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/spen/R$layout;->setting_change_style_mode_tab:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$id;->change_style_mode_tabs:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabParent:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabParent:Landroid/widget/LinearLayout;

    sget v0, Lcom/samsung/android/spen/R$id;->tab_stroke:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabParent:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->tab_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->addTab(Landroid/view/View;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->setOnTabSelectedListener(Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mViewMode:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabParent:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addActionButton(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2

    const-string v0, "SpenChangeStyleLayoutControl"

    const-string v1, "addActionButton()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->addButton(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public changeViewMode(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mViewMode:I

    if-eq v2, p1, :cond_3

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mViewMode:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabParent:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mSizeView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mColorView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mNoFillView:Landroid/view/View;

    return-void
.end method

.method public getActionButtonCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->getButtonCount()I

    move-result v0

    return v0
.end method

.method public setContentView(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->initTabView(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mSizeView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mColorView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mNoFillView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_change_style_size_margin_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mSizeView:Landroid/view/View;

    invoke-virtual {p1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_change_style_black_shape_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_change_style_black_shape_margin_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mNoFillView:Landroid/view/View;

    invoke-virtual {p1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v1, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget p4, Lcom/samsung/android/spen/R$dimen;->setting_change_style_color_margin_top:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mColorView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mActionButtonManager:Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenActionButtonManager;->setContentView(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public setMode(I)V
    .locals 4

    sget v0, Lcom/samsung/android/spen/R$id;->tab_stroke:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    sget v0, Lcom/samsung/android/spen/R$id;->tab_fill:I

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mTabGroup:Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup;->select(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mSizeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mNoFillView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mColorView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setModeChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->mModeChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;

    return-void
.end method
