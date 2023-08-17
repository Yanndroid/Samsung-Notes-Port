.class public Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_THEME_NORMAL:I = 0x0

.field public static final COLOR_THEME_REVERSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SpenColorThemeUtil"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    return-void
.end method

.method private closeCurrentTheme()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    :cond_0
    return-void
.end method

.method private getThemeObject(I)Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;

    invoke-direct {p1}, Lcom/samsung/android/sdk/pen/util/color/SpenNormalColorTheme;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenReverseColorTheme;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->closeCurrentTheme()V

    return-void
.end method

.method public getColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getColorTheme()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

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

.method public setColorTheme(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setColorTheme() theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenColorThemeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColorTheme()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->closeCurrentTheme()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getThemeObject(I)Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->mCurrentTheme:Lcom/samsung/android/sdk/pen/util/color/SpenIColorTheme;

    :cond_0
    return-void
.end method
