.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPenListControl"


# instance fields
.field private mChildLayoutId:I

.field private mCurrentPenIdx:I

.field private mOnPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

.field private mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

.field private mPenNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mViewOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mChildLayoutId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mCurrentPenIdx:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mOnPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    return-object p0
.end method

.method private initPenViews(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mChildLayoutId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->setPenList(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {v3, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->initPenItem(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mViewOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;)V

    return-void
.end method

.method private resetValue()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updateCurrentInfo(I)V

    return-void
.end method

.method private updateCurrentInfo(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mCurrentPenIdx:I

    return-void
.end method

.method private updatePen(IZIIFZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    if-eqz p1, :cond_1

    invoke-interface {p1, p4}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setPenSizeLevel(I)V

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setPenColorEnabled(Z)V

    if-eqz p2, :cond_1

    invoke-interface {p1, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setPenColor(I)V

    invoke-interface {p1, p5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setParticleSize(F)V

    invoke-interface {p1, p6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setFixedWidth(Z)V

    :cond_1
    return-void
.end method

.method private updatePenViews()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updatePenItem(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updateCurrentInfo(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mViewOnItemClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->setOnItemClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->resetValue()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mOnPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    return-void
.end method

.method public findPenIndex(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSelectedPenIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mCurrentPenIdx:I

    return v0
.end method

.method public initPenItem(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 7

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    const/high16 v3, -0x1000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setPenInfo(Ljava/lang/String;IIFZ)Z

    invoke-interface {p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->getPenName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOnPenClickListener(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mOnPenClickListener:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl$OnPenClickListener;

    return-void
.end method

.method public setPenInfo(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setPenInfo(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public setPenInfo(Ljava/lang/String;II)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setPenInfo(Ljava/lang/String;IIFZ)Z

    move-result p1

    return p1
.end method

.method public setPenInfo(Ljava/lang/String;IIFZ)Z
    .locals 8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->findPenIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getSelectPenIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updatePen(IZIIFZ)V

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updatePen(IZIIFZ)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->selectPen(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updateCurrentInfo(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUnselectedPen()V
    .locals 10

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mCurrentPenIdx:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->unSelectPen(I)V

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mCurrentPenIdx:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updatePen(IZIIFZ)V

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updateCurrentInfo(I)V

    :cond_0
    return-void
.end method

.method public setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->resetValue()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->mPenList:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;->getPenCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->updatePenViews()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->initPenViews(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePenItem(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->getPenName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
