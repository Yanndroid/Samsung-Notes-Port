.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;
.source "SourceFile"


# static fields
.field public static final CHANGE_TYPE_COLOR:I = 0x4

.field public static final CHANGE_TYPE_INVALID:I = -0x1

.field public static final CHANGE_TYPE_NONE:I = 0x0

.field public static final CHANGE_TYPE_PEN:I = 0x1

.field public static final CHANGE_TYPE_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpenPenUIPolicy"

.field private static final mDefaultPenNameList:[Ljava/lang/String;

.field private static final mPenDevicePenNameList:[Ljava/lang/String;

.field private static final mPenDevicePenPosList:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasPenFeature:Z

.field private mPenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.WaterColorBrush"

    const-string v1, "com.samsung.android.sdk.pen.pen.preload.OilBrush3"

    const-string v2, "com.samsung.android.sdk.pen.pen.preload.BrushPen"

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Pencil3"

    const-string v4, "com.samsung.android.sdk.pen.pen.preload.Smudge"

    const-string v5, "com.samsung.android.sdk.pen.pen.preload.AirBrushPen"

    const-string v6, "com.samsung.android.sdk.pen.pen.preload.Marker2"

    const-string v7, "com.samsung.android.sdk.pen.pen.preload.Crayon2"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mDefaultPenNameList:[Ljava/lang/String;

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.ColoredPencil"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenDevicePenNameList:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenDevicePenPosList:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->hasPenFeature(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getPenNameList(Z)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->isChangedPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p0

    return p0
.end method

.method public static checkPenInfo(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->isUsingPen(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->checkPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidPenInfo() changeType="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isChangedColor="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isChangedSize="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SpenPenUIPolicy"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0, p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getChangeType(IZZ)I

    move-result p0

    return p0
.end method

.method private static checkPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z
    .locals 2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenUIPolicy;->isChangedPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)Z

    move-result p0

    return p0
.end method

.method private static getChangeType(IZZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    or-int/lit8 p0, p0, 0x4

    :cond_1
    if-eqz p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    :cond_2
    return p0
.end method

.method public static getPenNameList(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->hasPenFeature(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getPenNameList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPenNameList(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mDefaultPenNameList:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenDevicePenNameList:[Ljava/lang/String;

    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenDevicePenPosList:[I

    aget v2, v2, v1

    aget-object p0, p0, v1

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static hasPenFeature(Landroid/content/Context;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/Spen;->hasPenFeature(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isEraserPen(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Eraser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isUsingPen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->hasPenFeature(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getPenNameList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->isEraserPen(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->isEraserPen(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->checkPenColor(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->checkPenSize(Landroid/content/Context;Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPenInfo() changeType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isChangedColor="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isChangedSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SpenPenUIPolicy"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v0, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->getChangeType(IZZ)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mPenList:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushUIPolicy;->mContext:Landroid/content/Context;

    return-void
.end method
