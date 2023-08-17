.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenBrushManager"


# instance fields
.field private mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getPenNameList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.Eraser"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->setPenNameList(Ljava/util/List;Z)V

    return-void
.end method

.method private loadedPen(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getPenIndex(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPen name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenBrushManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->loadPenPlugin(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    :cond_0
    return-void
.end method

.method public getMaxPenSizeDp(Ljava/lang/String;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->loadedPen(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->getMaxSettingValue(I)F

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaxPenSizeDp() Invalid Pen ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public hasAlphaValue(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->loadedPen(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->hasAlphaValue(I)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasAlphaValue() Invalid Pen ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isSupportParticleDensity(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->loadedPen(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isSupportParticleDensity(I)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportParticleDensity() Invalid Pen ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isSupportSize(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->loadedPen(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushManager;->mDataManager:Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenSettingDataManager;->isSupportSize(I)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportSize() Invalid Pen ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBrushManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
