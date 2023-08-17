.class public Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;
.super Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;-><init>()V

    return-void
.end method

.method private updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V
    .locals 7

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    sget v6, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_short_background_white:I

    const/4 v0, 0x2

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p4, v4, v0

    const/4 v0, 0x1

    invoke-static {p1, p4, p5, v0}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetBgThemeColor(Landroid/content/Context;IZZ)I

    move-result p4

    aput p4, v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateContentWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[III)V

    return-void
.end method

.method private updateTitleColor(Landroid/content/Context;Landroid/widget/RemoteViews;IZLcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 8

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->isWidgetTitleDarkThemeColor(Landroid/content/Context;IZZ)Z

    move-result v5

    const/4 p3, 0x2

    new-array v6, p3, [I

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    const/4 v0, 0x0

    aput p4, v6, v0

    sget p4, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    const/4 v1, 0x1

    aput p4, v6, v1

    new-array v7, p3, [I

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_title:I

    aput p3, v7, v0

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_shadow_title:I

    aput p3, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateContentTitleTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;Z[I[I)V

    return-void
.end method


# virtual methods
.method public applyThemeToEmptyWidget(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 6

    iget-boolean v0, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color_black:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color:I

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    move v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;->updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V

    sget v4, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_img_shortcut_empty_ic:I

    const/4 v0, 0x2

    new-array v5, v0, [I

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    aput v1, v5, v0

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    aput v1, v5, v0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateContentEmptyImageTheme(Landroid/content/Context;Landroid/widget/RemoteViews;ZI[I)V

    return-void
.end method

.method public applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V
    .locals 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;->updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/theme/ShortcutThemeManager;->updateTitleColor(Landroid/content/Context;Landroid/widget/RemoteViews;IZLcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    return-void
.end method
