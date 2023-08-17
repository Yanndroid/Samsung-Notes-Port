.class public Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;
    }
.end annotation


# static fields
.field private static final HSV_COLOR_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SpenSettingChangeStyleManager"


# instance fields
.field private mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

.field private mChangeStyleInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;->onChangeStyleInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    return-void
.end method

.method private updateHSVColor([F[F)Z
    .locals 2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public changeBlankShape(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeBlankShape ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-boolean v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-boolean v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-boolean p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->isBlankShape:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->notifyDataChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public changeColor(II[FZZ)Z
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    aget v1, p3, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    aget v1, p3, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    aget v1, p3, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    if-eqz p4, :cond_0

    const-string v1, "TRUE"

    goto :goto_0

    :cond_0
    const-string v1, "FALSE"

    :goto_0
    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "changeColor() type=%d, info=%d, hsv[%f, %f, %f] maintainAlpha=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    if-eq v0, p2, :cond_2

    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillColorUIInfo:I

    move v2, v3

    :cond_2
    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->fillHSVColor:[F

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->updateHSVColor([F[F)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->getColorFromHSV(I[FZ)I

    move-result p2

    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->fillColor:I

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    if-eq v0, p2, :cond_4

    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeColorUIInfo:I

    move v2, v3

    :cond_4
    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->strokeHSVColor:[F

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->updateHSVColor([F[F)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->getColorFromHSV(I[FZ)I

    move-result p2

    iput p2, p1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->color:I

    :goto_1
    move v2, v3

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    if-eqz p5, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->notifyDataChanged()V

    :cond_6
    return v2
.end method

.method public changeSizeLevel(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeSizeLevel ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->sizeLevel:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->notifyDataChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public changeType(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v1, v1, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingChangeStyleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingChangeStyleInfo;->type:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->notifyDataChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    return-void
.end method

.method public getChangeStyleInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    return-object v0
.end method

.method public setChangeStyleInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfo:Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;->copy(Lcom/samsung/android/sdk/pen/SpenSettingUIChangeStyleInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "E_INVALID_ARG : parameter \'changeStyleInfo\' is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChangeStyleInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->mChangeStyleInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager$ChangeStyleInfoChangedListener;

    return-void
.end method
