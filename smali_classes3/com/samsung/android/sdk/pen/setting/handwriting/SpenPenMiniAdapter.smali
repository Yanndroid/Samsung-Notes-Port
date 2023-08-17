.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;,
        Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenMiniAdapter"


# instance fields
.field private mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

.field private mItemClickListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;

.field private mItemLayoutId:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectIdx:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->initList(Ljava/util/List;)V

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mItemLayoutId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mSelectIdx:I

    new-instance p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mItemClickListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;

    return-object p0
.end method

.method private findPenIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private initList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPenName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mSelectIdx:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->onBindViewHolder(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;I)V
    .locals 7
    .param p1    # Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder() position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenMiniAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mSelectIdx:I

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenResource;->getPenDescriptionID(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

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

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->setPenColorEnabled(Z)V

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->getPenName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenResource;->getPenDescriptionID(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->getPenName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->setPenInfo(Ljava/lang/String;IIFZ)Z

    iget-object p2, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->setPenColorEnabled(Z)V

    iget-object p2, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;->setSelected(Z)V

    move p2, v0

    :goto_0
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mItemLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mItemClickListener:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;IIF)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->findPenIndex(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mSelectIdx:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mSelectIdx:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mCurrentPen:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput-object p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput p3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput p4, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    :cond_0
    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->mSelectIdx:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
