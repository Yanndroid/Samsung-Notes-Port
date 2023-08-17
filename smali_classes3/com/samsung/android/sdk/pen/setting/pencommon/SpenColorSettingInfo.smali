.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMaxSelectCount:I

.field private mSwatchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mSwatchList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->setSwatchList(Ljava/util/List;)Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mMaxSelectCount:I

    return-void
.end method


# virtual methods
.method public getMaxSelectCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mMaxSelectCount:I

    return v0
.end method

.method public getSwatchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mSwatchList:Ljava/util/List;

    return-object v0
.end method

.method public setMaxSelectCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mMaxSelectCount:I

    return-void
.end method

.method public setSwatchList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mSwatchList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColorSettingInfo;->mSwatchList:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method
