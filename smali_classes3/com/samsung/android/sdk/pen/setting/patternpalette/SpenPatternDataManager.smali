.class public Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mPatternInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->mPatternInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private addInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->mPatternInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->mPatternInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPatternInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->mPatternInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->getPenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->mPatternInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->mPatternInfoList:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public getResource(Ljava/lang/String;F)Ljava/lang/String;
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getPatternInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->getSizeList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->getResource(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getResourceList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getPatternInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->getResourceList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSizeList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getPatternInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->getSizeList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public needBitmap(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getPatternInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->needBitmap()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPatternInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->getPatternInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternInfo;->setPatternList(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/patternpalette/SpenPatternDataManager;->addInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)Z

    move-result p1

    return p1
.end method
