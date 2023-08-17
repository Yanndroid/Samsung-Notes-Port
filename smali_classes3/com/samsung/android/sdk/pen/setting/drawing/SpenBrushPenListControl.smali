.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;
.source "SourceFile"


# instance fields
.field private mViewInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;-><init>(Landroid/content/Context;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->mViewInfoList:Ljava/util/HashMap;

    return-void
.end method

.method private initPenViewInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->mViewInfoList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->mViewInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setBrushInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenStringId()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenResourceId()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskResourceId()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getPenMaskStrokeResourceId()I

    move-result v6

    move-object v1, p2

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;->setPenResourceInfo(Ljava/lang/String;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getUpperWeight()F

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getMaskWeight()F

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getBottomWeight()F

    move-result v0

    invoke-interface {p2, p1, v1, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;->setMaskPosition(FFF)V

    :cond_0
    return-void
.end method

.method private updatePenNames(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->hasUserBrushInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenResource;->isPenResourceDefaultSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->mViewInfoList:Ljava/util/HashMap;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->close()V

    return-void
.end method

.method public getBrushPenViewInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->mViewInfoList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasUserBrushInfo(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->mViewInfoList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initPenItem(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->hasUserBrushInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v3, -0x1000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setPenInfo(Ljava/lang/String;IIFZ)Z

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->setBrushInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;)V

    :goto_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->getPenName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->initPenViewInfoList(Ljava/util/List;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->updatePenNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenListControl;->setView(Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList;Ljava/util/List;)V

    return-void
.end method

.method public updatePenItem(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->getPenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->hasUserBrushInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/high16 v3, -0x1000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenViewInterface;->setPenInfo(Ljava/lang/String;IIFZ)Z

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenListControl;->setBrushInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInterface;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
