.class Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRemoverDataManager"

.field public static final TYPE_CUTTER_DEFAULT_SIZE:F = 1.0f

.field private static final TYPE_MAX:I = 0x2

.field public static final TYPE_REMOVER_DEFAULT_SIZE:F = 2.0f


# instance fields
.field private mCurrentType:I

.field private mIsSupportStrokeEraseSize:Z

.field private mSizeInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mTarget:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    return-void
.end method

.method public getCurrentInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->getInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    return-object v0
.end method

.method public getCurrentType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    return v0
.end method

.method public getInfo(I)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mTarget:I

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    return-object v0
.end method

.method public getInfoList()[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>()V

    aput-object v4, v0, v2

    aget-object v4, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    aget-object v4, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v4, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    aget-object v3, v0, v2

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mTarget:I

    iput v4, v3, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTarget()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mTarget:I

    return v0
.end method

.method public isSupportStrokeEraseSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    return v0
.end method

.method public setCurrentSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCurrentType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInfo() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRemoverDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mTarget:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mCurrentType:I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInfoList() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRemoverDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mSizeInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setSupportStrokeEraseSize(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSupportStrokeEraseSize() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRemoverDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mIsSupportStrokeEraseSize:Z

    return-void
.end method

.method public setTarget(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverDataManager;->mTarget:I

    return-void
.end method
