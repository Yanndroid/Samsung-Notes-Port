.class public Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;
.super Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface;


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpenPenMiniLayout"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

.field private mOrientation:I

.field private mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

.field private mPenLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPenList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->construct(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->notifyPenClicked(Ljava/lang/String;Z)V

    return-void
.end method

.method private construct(Landroid/content/Context;I)V
    .locals 4

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mOrientation:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->getLayoutId(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->decideRadiusDir(I)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->initView(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getTopLeftRadius()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getTopRightRadius()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getBottomRightRadius()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->getBottomLeftRadius()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenRoundLayout;->setRadius(FFFF)V

    sget v0, Lcom/samsung/android/spen/R$id;->mini_pen_list:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private decideRadiusDir(I)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_START:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    return-object p1

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;->RADIUS_DIR_TOP:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl$RadiusDir;

    return-object p1
.end method

.method private getItemId(I)I
    .locals 0

    if-nez p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$layout;->setting_mini_pen_item_land_view:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$layout;->setting_mini_pen_item_view:I

    :goto_0
    return p1
.end method

.method private getLayoutId(I)I
    .locals 0

    if-nez p1, :cond_0

    sget p1, Lcom/samsung/android/spen/R$layout;->setting_mini_pen_land_layout:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/spen/R$layout;->setting_mini_pen_layout:I

    return p1
.end method

.method private notifyPenClicked(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;->onPenClicked(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setPenFocus(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPenFocus() index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenMiniLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Visible["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v0, :cond_3

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    if-gt v2, p1, :cond_2

    if-gt p1, v3, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "SpenPenMiniLayout"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenPopupControl:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenPopupControl;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method public getSelectedPenPosition()I
    .locals 2

    const-string v0, "SpenPenMiniLayout"

    const-string v1, "getSelectedPenPosition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->getSelectedPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setActionListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;)V
    .locals 2

    const-string v0, "SpenPenMiniLayout"

    const-string/jumbo v1, "setActionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mActionListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenLayoutInterface$OnActionListener;

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;IIFZ)Z
    .locals 1

    const-string p5, "SpenPenMiniLayout"

    const-string/jumbo v0, "setPenInfo()"

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->setPenInfo(Ljava/lang/String;IIF)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->getSelectedPenPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->setPenFocus(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setPenList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SpenPenMiniLayout"

    const-string/jumbo v1, "setPenList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->getItemId(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->mPenAdapter:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setUnselectedPen()V
    .locals 2

    const-string v0, "SpenPenMiniLayout"

    const-string/jumbo v1, "setUnselectedPen()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
