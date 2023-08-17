.class public Lcom/samsung/android/app/notes/widget/theme/ShowNoteThemeManager;
.super Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;-><init>()V

    return-void
.end method

.method private updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V
    .locals 16

    move/from16 v0, p4

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v6

    sget v12, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    sget v13, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_background_white:I

    const/4 v14, 0x2

    new-array v11, v14, [I

    const/4 v15, 0x0

    aput v0, v11, v15

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-static {v1, v0, v2, v5}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->getWidgetBgThemeColor(Landroid/content/Context;IZZ)I

    move-result v0

    aput v0, v11, v5

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateContentWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[III)V

    new-array v4, v14, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    aput v0, v4, v15

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    aput v0, v4, v5

    new-array v7, v14, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    aput v0, v7, v15

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting_icon:I

    aput v0, v7, v5

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v3, v6

    move v8, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateItemImageTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V

    new-array v0, v14, [I

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_option_white_background:I

    aput v1, v0, v15

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_option_dark_background:I

    aput v1, v0, v8

    new-array v1, v14, [I

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting:I

    aput v2, v1, v15

    sget v2, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_voice:I

    aput v2, v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v6, v0, v1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateBackgroundTheme(Landroid/widget/RemoteViews;Z[I[I)V

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

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title:I

    aput p3, v7, v0

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title_shadow:I

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
    .locals 7

    iget-boolean v0, p3, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->mIsMatchWithDarkMode:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color_black:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color:I

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    move v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/notes/widget/theme/ShowNoteThemeManager;->updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    aput v1, v6, v0

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    aput v1, v6, v0

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_no_memo_text:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateContentEmptyTextTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;I[I)V

    return-void
.end method

.method public applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V
    .locals 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/notes/widget/theme/ShowNoteThemeManager;->updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;IZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/notes/widget/theme/ShowNoteThemeManager;->updateTitleColor(Landroid/content/Context;Landroid/widget/RemoteViews;IZLcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    return-void
.end method
