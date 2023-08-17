.class public Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenPickerColor"


# instance fields
.field private mChangedWho:Ljava/lang/String;

.field private mColor:I

.field private mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

.field private mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;-><init>([F)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private isSameOpacityColor(II)Z
    .locals 2

    const v0, 0xffffff

    and-int/2addr p1, v0

    const/high16 v1, -0x1000000

    or-int/2addr p1, v1

    and-int/2addr p2, v0

    or-int/2addr p2, v1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->getHSV([F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->notify(Ljava/lang/String;I[F)V

    :cond_1
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
.method public addEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->subscribe(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    return v0
.end method

.method public getColor([F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->getHSV([F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeEventListener(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mEventManager:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventManager;->unsubscribe(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColorEventListener;)V

    :cond_0
    return-void
.end method

.method public setColor(Ljava/lang/String;I)V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setColor() int color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "#%X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SpenPickerColor"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    if-ne v2, p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not Changed. color="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->getHSV([F)Z

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v3

    aget v7, v1, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    aget v7, v1, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v0

    const-string/jumbo v7, "setColor(int) OLD[#%X, %f, %f, %f]"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    invoke-static {p2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->setColor([F)Z

    new-array p1, v2, [Ljava/lang/Object;

    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    aget p2, v1, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v3

    aget p2, v1, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v8

    aget p2, v1, v8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p1, v0

    const-string/jumbo p2, "setColor(int) NEW[#%X, %f, %f, %f]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->notifyChanged(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setColor(Ljava/lang/String;IFFF)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v3, 0x1

    aput p4, v1, v3

    const/4 v4, 0x2

    aput p5, v1, v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    const/4 v6, 0x4

    const-string v7, "SpenPickerColor"

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {v5, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->isSameColor([F)Z

    move-result v5

    if-eqz v5, :cond_0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Not Changed. Color[%f, %f, %f] Alpha=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-array p3, v0, [F

    fill-array-data p3, :array_0

    iget-object p4, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {p4, p3}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->getHSV([F)Z

    new-array p4, v6, [Ljava/lang/Object;

    iget p5, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v2

    aget p5, p3, v2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    aput-object p5, p4, v3

    aget p5, p3, v3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    aput-object p5, p4, v4

    aget p3, p3, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p4, v0

    const-string/jumbo p3, "setColor(int, float, float, float) OLD[#%X, %f, %f, %f]"

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mHSVColor:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenHSVColor;->setColor([F)Z

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mColor:I

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    aget p1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p2, v3

    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p2, v4

    aget p1, v1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p2, v0

    const-string/jumbo p1, "setColor(int, float, float, float) NEW[#%X, %f, %f, %f]"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->notifyChanged(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public whoChanged()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerColor;->mChangedWho:Ljava/lang/String;

    return-object v0
.end method
