.class public Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILL_TYPE_SOLID:I


# instance fields
.field public fillColor:I

.field public fillType:I

.field public floodFillTolerance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillType:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillColor:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->floodFillTolerance:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillType:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillColor:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->floodFillTolerance:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillType:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillColor:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->floodFillTolerance:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->floodFillTolerance:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillColor:I

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillType:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->fillType:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->floodFillTolerance:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingFillColorInfo;->floodFillTolerance:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
