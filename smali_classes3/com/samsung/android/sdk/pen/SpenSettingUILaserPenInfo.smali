.class public Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LASER_TYPE_LINE:I = 0x1

.field public static final LASER_TYPE_POINT:I


# instance fields
.field public color:I

.field public colorUIInfo:I

.field public fadeOutTime:I

.field public hsvColor:[F

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iget v3, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public copy(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
