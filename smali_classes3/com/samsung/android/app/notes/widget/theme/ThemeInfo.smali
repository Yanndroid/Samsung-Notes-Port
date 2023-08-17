.class public Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;
.super Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeInfo"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->needReverseColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->getTransparency(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mBackgroundColor:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->checkTheme(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThemeInfo"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsForcedTheme:Z

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    :goto_0
    return v0
.end method

.method public getTextColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsForcedTheme:Z

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    :goto_0
    return v0
.end method

.method public setForceContentsThemeColor(I)Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsForcedTheme:Z

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    return-object p0
.end method

.method public bridge synthetic setForceContentsThemeColor(I)Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;->setForceContentsThemeColor(I)Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    move-result-object p1

    return-object p1
.end method
