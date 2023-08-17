.class public Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACKGROUND_VIEW_ID_INDEX:I = 0x0

.field private static final DARK_MODE_COLOR_INDEX:I = 0x1

.field private static final DARK_MODE_INSIDE_BG_COLOR_INDEX:I = 0x3

.field private static final INSIDE_BACKGROUND_VIEW_ID_INDEX:I = 0x1

.field private static final LIGHT_MODE_COLOR_INDEX:I = 0x0

.field private static final LIGHT_MODE_INSIDE_BG_COLOR_INDEX:I = 0x2

.field private static final SHADOW_TEXT_VIEW_ID_INDEX:I = 0x1

.field private static final TEXT_VIEW_ID_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getColor(Landroid/content/Context;Z[I)I
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    aget p2, p3, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    aget p2, p3, p2

    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private isMatchWithDarkMode(Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isNotSupportMatchWithDarkMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private saveTheme(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V
    .locals 2

    const-string v0, "widgetPref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "samsung_note_widget_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p2, p2, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTheme:I

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateInsideTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I[II)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    aget p3, p4, p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    aget p3, p4, p3

    :goto_0
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    move v4, p1

    const/4 p1, 0x1

    aget v2, p5, p1

    aget v3, p6, p1

    move-object v0, p0

    move-object v1, p2

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateBackgroundColor(Landroid/widget/RemoteViews;IIII)V

    return-void
.end method


# virtual methods
.method public isBlackBackground(Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->isMatchWithDarkMode(Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mBackgroundColor:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public updateBackgroundColor(Landroid/widget/RemoteViews;IIII)V
    .locals 1

    const-string v0, "setImageResource"

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string p3, "setColorFilter"

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string p3, "setImageAlpha"

    invoke-virtual {p1, p2, p3, p5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public updateBackgroundTheme(Landroid/widget/RemoteViews;Z[I[I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    aget p2, p3, p2

    goto :goto_0

    :cond_0
    aget p2, p3, v0

    :goto_0
    array-length p3, p4

    :goto_1
    if-ge v0, p3, :cond_1

    aget v1, p4, v0

    const-string v2, "setBackgroundResource"

    invoke-virtual {p1, v1, v2, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateContentEmptyImageTheme(Landroid/content/Context;Landroid/widget/RemoteViews;ZI[I)V
    .locals 0

    invoke-direct {p0, p1, p3, p5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    const-string p3, "setColorFilter"

    invoke-virtual {p2, p4, p3, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public updateContentEmptyTextTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;I[I)V
    .locals 0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result p3

    invoke-direct {p0, p1, p3, p5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public updateContentTitleTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;Z[I[I)V
    .locals 2

    invoke-direct {p0, p1, p4, p5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget p3, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    const/16 p4, 0x64

    if-ne p3, p4, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_1

    aget p4, p6, p5

    goto :goto_1

    :cond_1
    aget p4, p6, v0

    :goto_1
    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    aget p1, p6, v0

    const/16 p4, 0x8

    if-eqz p3, :cond_2

    move v1, p4

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget p1, p6, p5

    if-eqz p3, :cond_3

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public updateContentWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[III)V
    .locals 6

    iget v0, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mAppWidgetId:I

    iget-boolean v1, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveWidgetNightModeThemePref(IZ)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->saveTheme(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->isBlackBackground(Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aget p1, p4, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget p1, p4, p1

    :goto_0
    move v4, p1

    iget p1, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->convertAlpha(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move v2, p5

    move v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateBackgroundColor(Landroid/widget/RemoteViews;IIII)V

    return-void
.end method

.method public updateEmptyTextTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;I[I)V
    .locals 0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result p3

    invoke-direct {p0, p1, p3, p5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    invoke-virtual {p2, p4, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method public updateItemImageTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V
    .locals 2

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    array-length p3, p5

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget v0, p5, p4

    const-string v1, "setColorFilter"

    invoke-virtual {p2, v0, v1, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateItemTextTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    array-length p3, p5

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget v0, p5, p4

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateTitleAndShadow(Landroid/widget/RemoteViews;ZIII)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p5, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p1, p5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, p4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p4, p3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    invoke-virtual {p1, p4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, p5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-void
.end method

.method public updateTitleTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[I[I)I
    .locals 7

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v0

    invoke-direct {p0, p1, v0, p4}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result p1

    const/4 p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p3, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    move v3, p4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    aget v5, p5, v1

    aget v6, p5, p4

    move-object v1, p0

    move-object v2, p2

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateTitleAndShadow(Landroid/widget/RemoteViews;ZIII)V

    return p1
.end method

.method public updateWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[I[I[I)V
    .locals 11

    move-object v8, p0

    move-object v6, p1

    move-object v0, p3

    move-object v7, p4

    iget v1, v0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mAppWidgetId:I

    iget-boolean v2, v0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/widget/preference/BaseWidgetPreferenceManager;->saveWidgetNightModeThemePref(IZ)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->saveTheme(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->isBlackBackground(Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)Z

    move-result v9

    invoke-direct {p0, p1, v9, p4}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->getColor(Landroid/content/Context;Z[I)I

    move-result v4

    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mTransparency:I

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->convertAlpha(I)I

    move-result v10

    const/4 v0, 0x0

    aget v2, p5, v0

    aget v3, p6, v0

    move-object v0, p0

    move-object v1, p2

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateBackgroundColor(Landroid/widget/RemoteViews;IIII)V

    array-length v0, v7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v9

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateInsideTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I[II)V

    :cond_0
    return-void
.end method
