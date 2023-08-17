.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final SCREEN_UNIT:F

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

.field private mCurrentPenNameIndex:I

.field private mIsUserDataSet:Z

.field private mPenColorUIInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenHsvColorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;",
            ">;"
        }
    .end annotation
.end field

.field private mPenInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenListMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

.field private mPenSizeLevelList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpenPenDataManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->TAG:Ljava/lang/String;

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->SCREEN_UNIT:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mIsUserDataSet:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->construct(Landroid/content/Context;)V

    return-void
.end method

.method private construct(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->initPenPlugin()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->initCurrentPen()V

    return-void
.end method

.method private displayCurrentPenInfo()V
    .locals 6

    const-string v0, "SpenPenDataManager"

    const-string v1, "displayCurrentPenInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++ name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++ color ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v4, v4, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    and-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, " #%08X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++ sizeLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++ particleSize= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++ isFixedWidth= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-boolean v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    if-eqz v2, :cond_0

    const-string v2, "TRUE"

    goto :goto_0

    :cond_0
    const-string v2, "FALSE"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getPenAttributes(II)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getPenAttributes(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->createPen(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result v1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->destroyPen(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPenManager;->close()V

    return v1
.end method

.method private getPenIndexInPenNameList(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private initCurrentPen()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getDefaultPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    return-void
.end method

.method private initPenPlugin()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->getPenInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private isSystemValidPen(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->isSystemValidPen(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private updateHsvColor(Ljava/lang/String;[F)Z
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;->setColor([F)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;

    invoke-direct {v1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;-><init>([F)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "## updateHsvColor() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpenPenDataManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public checkColor(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->hasAlphaValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    :cond_5
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getColor(I)I
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getColor()I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentPenIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    return v0
.end method

.method public getCurrentPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    return-object v0
.end method

.method public getDefaultPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->getPenIndexByPenName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfo() index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpenPenDataManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "FAIL Load PLUGIN...."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    const-string v1, ""

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    move p1, v6

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_4

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v8, v8, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-boolean v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v7, v7, v6

    cmpl-float v7, v7, v4

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v7, v7, v5

    cmpl-float v7, v7, v4

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v7, v7, v2

    cmpl-float v7, v7, v4

    if-nez v7, :cond_2

    const-string v7, "getInfo() - 1 from making self"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v7, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_1

    :cond_2
    const-string v7, "getInfo() - 2 from penDataList"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    iget-object v8, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v9, 0x3

    invoke-static {v7, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iput v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iput v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v7, v7, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput-boolean p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    move p1, v5

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    move p1, v6

    :goto_2
    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getColor()I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getSize()F

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    goto :goto_3

    :cond_5
    iput v6, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "getInfo() - 3 from HsvList"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenHsvColorList:Ljava/util/HashMap;

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-virtual {p1, v7}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;->getHSV([F)Z

    goto :goto_4

    :cond_6
    const-string p1, "getInfo() - 4 from Color.colorToHsv()"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v7, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {p1, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getAdvancedSetting()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iput-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    :goto_5
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    goto :goto_6

    :cond_8
    iput v6, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    :goto_6
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->isEraserEnabled()Z

    move-result p1

    iput-boolean p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getParticleDensity()I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    if-nez p1, :cond_9

    iput v5, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getParticleSize()F

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->isFixedWidthEnabled()Z

    move-result p1

    iput-boolean p1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInfo() name="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " index ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " level="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " color="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hsvColor["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v1, v1, v6

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] + particleDensity="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " particleSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " isFixedWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getMaxSettingValue(I)F
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMaxSettingValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMinSettingValue(I)F
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getMinSettingValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPenIndex(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndexInPenNameList(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->getPenIndexByPenName(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public getPenInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    return-object v0
.end method

.method public getPenName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPenNameList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasAlphaValue(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(II)Z

    move-result p1

    return p1
.end method

.method public hasAlphaValue(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(II)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEraserEnabled(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->isEraserEnabled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotCreatedPenPlugIn(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isSupportParticleDensity(I)Z
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(II)Z

    move-result p1

    return p1
.end method

.method public isSupportParticleSize(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v1

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(II)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSupportSize(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenAttributes(II)Z

    move-result p1

    return p1
.end method

.method public isUserDataSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mIsUserDataSet:Z

    return v0
.end method

.method public isUsingPen(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isValidPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isUsingPen(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadPenPlugin(ILjava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPenPlugin index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "### penObject is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPensManager;->loadPenObject(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "### (2) penObject is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string p1, "### penObject is Not null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public loadPenPlugin(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removePen(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentPen(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getInfo(Ljava/lang/String;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I

    move-result p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->displayCurrentPenInfo()V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setPenSize(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->checkColor(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCurrentPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isValidPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result v2

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    const-string v4, "SpenPenDataManager"

    if-eq v2, v3, :cond_1

    const-string v2, "1. change hsv."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {v3, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_0

    :cond_1
    const-string v2, "2. copy hsv"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    const/4 v4, 0x3

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    iget-boolean v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput-boolean v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput-boolean v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setPenSize(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->displayCurrentPenInfo()V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public setPenInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenDataList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mIsUserDataSet:Z

    :cond_0
    return-void
.end method

.method public setPenNameList(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isSystemValidPen(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenListMap:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setPenSize(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 3

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getMinSettingValue(I)F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getMaxSettingValue(I)F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->setPenSizeToSizeLevel(Landroid/content/Context;FFLcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    :cond_2
    return-void
.end method

.method public updateColor(II[FI)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateColor (COLOR) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateColor(COLOR) HSV=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p3, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenName()Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_1

    const/4 p3, 0x3

    new-array p3, p3, [F

    invoke-static {p2, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateHsvColor(Ljava/lang/String;[F)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_2
    return v2
.end method

.method public updateCurrentPenColor(I[FI)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-eqz p2, :cond_2

    array-length v2, p2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {p2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput p3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->checkColor(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iget p3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateColor(II[FI)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    return v1
.end method

.method public updateCurrentPenDensity(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateParticleDensity(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateCurrentPenSize(IF)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    iput p2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mCurrentPenNameIndex:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateSize(IIF)Z

    move-result p1

    return p1
.end method

.method public updateInfo(ILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleDensity(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleSize(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    iget-boolean v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setFixedWidthEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->hsv:[F

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->updateHsvColor(Ljava/lang/String;[F)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->isLoaded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->setLoaded(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenColorUIInfoList:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v3, p2, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;->colorUIInfo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInfo() penIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenPenDataManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInfo() size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " sizeLevel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " color="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->getPenAttribute(I)Z

    move-result p1

    return p1
.end method

.method public updateParticleDensity(II)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateParticleDensity index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isSupportParticleDensity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setParticleDensity(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateSize(IIF)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenPenDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenSizeLevelList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->mPenInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPluginInfo;->getPenObject()Lcom/samsung/android/sdk/pen/pen/SpenPen;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->setSize(F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
