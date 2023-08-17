.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHsvColor:[F


# direct methods
.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;->mHsvColor:[F

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;->setColor([F)Z

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
.method public getHSV([F)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;->mHsvColor:[F

    aget v1, v1, v0

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method public setColor([F)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenHSVColor;->mHsvColor:[F

    aget v3, p1, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method
