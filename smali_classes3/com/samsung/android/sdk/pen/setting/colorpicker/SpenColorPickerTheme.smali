.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenColorPickerTheme"


# instance fields
.field private mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

.field private mContext:Landroid/content/Context;

.field private mOldColor:[F

.field private mPickerColorTheme:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;[F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mOldColor:[F

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p2, p1, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerNormalColorTheme;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerNormalColorTheme;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mPickerColorTheme:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;

    return-void
.end method

.method private closeTheme()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mPickerColorTheme:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mOldColor:[F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->closeTheme()V

    return-void
.end method

.method public getColor([F[F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;->getColor([F[F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getContentColor([F[F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mPickerColorTheme:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;->getContentColor([F[F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getOldVisibleColor([F)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mOldColor:[F

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;->getColor([F[F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTheme()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    instance-of v0, v0, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public setTheme(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->getTheme()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTheme() current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " theme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenColorPickerTheme"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eq v0, p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->closeTheme()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerNormalColorTheme;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerNormalColorTheme;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mColorTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mPickerColorTheme:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenIPickerColorTheme;

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorPickerTheme;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenPickerReverseColorTheme;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "Unknown theme."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
