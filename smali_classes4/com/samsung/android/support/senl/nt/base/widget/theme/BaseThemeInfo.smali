.class public abstract Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseThemeInfo"


# instance fields
.field public mAppWidgetId:I

.field public mBackgroundColor:I

.field public mDarkMode:I

.field public mIsForcedTheme:Z

.field public mIsMatchWithDarkMode:Z

.field public mTheme:I

.field public mTransparency:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->setForceContentsThemeColor(I)Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mAppWidgetId:I

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getReverseTransparency(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getBackgroundColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mBackgroundColor:I

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getDarkMode(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mDarkMode:I

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isMatchWithDarkModeAndNightMode(Landroid/content/Context;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->initTheme(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseThemeInfo"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initTheme(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mBackgroundColor:I

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->checkTheme(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    return-void
.end method


# virtual methods
.method public abstract getStrokeColor()I
.end method

.method public abstract getTextColor()I
.end method

.method public isDarkMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setForceContentsThemeColor(I)Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsForcedTheme:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThemeInfo# background color "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , transparency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , darkMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mDarkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , theme : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , isMatchWithDarkMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
