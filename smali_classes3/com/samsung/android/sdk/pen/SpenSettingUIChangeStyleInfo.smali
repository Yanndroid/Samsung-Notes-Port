.class public Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
.super Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;
.source "SourceFile"


# instance fields
.field public fillColorUIInfo:I

.field public fillHSVColor:[F

.field public strokeColorUIInfo:I

.field public strokeHSVColor:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;)V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    iget-object v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public copy(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
