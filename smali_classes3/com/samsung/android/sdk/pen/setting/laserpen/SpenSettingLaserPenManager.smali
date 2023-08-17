.class public Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingLaserPenManager"


# instance fields
.field private mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

.field private mLaserPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    return-void
.end method

.method private getColorFromHSV(I[FZ)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor(I[F)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor([F)I

    move-result p1

    :goto_0
    return p1
.end method

.method private notifyDataChanged()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;->onLaserPenInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V

    return-void
.end method


# virtual methods
.method public changeColor(I[FZZ)Z
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aget v1, p2, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    aget v1, p2, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    aget v1, p2, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    if-eqz p3, :cond_0

    const-string v1, "TRUE"

    goto :goto_0

    :cond_0
    const-string v1, "FALSE"

    :goto_0
    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "changeColor() info=%d, hsv[%f, %f, %f] maintainAlpha=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingLaserPenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    if-eq v1, p1, :cond_1

    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->colorUIInfo:I

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    invoke-static {p2, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->hsvColor:[F

    invoke-direct {p0, p2, v0, p3}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->getColorFromHSV(I[FZ)I

    move-result p2

    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->color:I

    goto :goto_2

    :cond_2
    move v3, p1

    :goto_2
    if-eqz v3, :cond_3

    if-eqz p4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->notifyDataChanged()V

    :cond_3
    return v3
.end method

.method public changeFadeOutTime(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->fadeOutTime:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->notifyDataChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public changeType(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->type:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->notifyDataChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;

    return-void
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V

    return-object v0
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfo:Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;->copy(Lcom/samsung/android/sdk/pen/SpenSettingUILaserPenInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'LaserPenInfo\' is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLaserPenInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager;->mLaserPenInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenSettingLaserPenManager$LaserPenInfoChangedListener;

    return-void
.end method
