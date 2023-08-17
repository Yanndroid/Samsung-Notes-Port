.class public Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;
.super Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;-><init>()V

    return-void
.end method

.method private updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 12

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v3

    const/4 v0, 0x4

    new-array v8, v0, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_bg_color:I

    const/4 v1, 0x0

    aput v0, v8, v1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_list_bg_color_black:I

    const/4 v2, 0x1

    aput v0, v8, v2

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_inside_background_color_white:I

    const/4 v11, 0x2

    aput v0, v8, v11

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_inside_background_color_black:I

    const/4 v4, 0x3

    aput v0, v8, v4

    new-array v9, v11, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->background:I

    aput v0, v9, v1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->inside_background:I

    aput v0, v9, v2

    new-array v10, v11, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_background_white:I

    aput v0, v10, v1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$drawable;->widget_inside_background:I

    aput v0, v10, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[I[I[I)V

    new-array v4, v11, [I

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    aput p3, v4, v1

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    aput p3, v4, v2

    new-array v5, v11, [I

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_settings:I

    aput p3, v5, v1

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_overlap_setting_icon:I

    aput p3, v5, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateItemImageTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V

    return-void
.end method

.method private updateTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 7

    const/4 v0, 0x2

    new-array v5, v0, [I

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    const/4 v2, 0x0

    aput v1, v5, v2

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    const/4 v3, 0x1

    aput v1, v5, v3

    new-array v6, v0, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title:I

    aput v0, v6, v2

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_title_shadow:I

    aput v0, v6, v3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateTitleTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[I[I)I

    return-void
.end method


# virtual methods
.method public applyThemeToEmptyWidget(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;->applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    const/4 v0, 0x2

    new-array v6, v0, [I

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    const/4 v1, 0x0

    aput v0, v6, v1

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    const/4 v1, 0x1

    aput v0, v6, v1

    sget v5, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->widget_list_empty_text:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateEmptyTextTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;I[I)V

    return-void
.end method

.method public applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;->updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/theme/NoteListThemeManager;->updateTitle(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;)V

    return-void
.end method

.method public updateListItemColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 7

    new-instance v0, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x2

    new-array v5, p3, [I

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_white_theme_text_color:I

    const/4 v2, 0x0

    aput v1, v5, v2

    sget v1, Lcom/samsung/android/support/senl/nt/homewidget/R$color;->widget_black_theme_text_color:I

    const/4 v3, 0x1

    aput v1, v5, v3

    new-array v6, p3, [I

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->title:I

    aput p3, v6, v2

    sget p3, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->content:I

    aput p3, v6, v3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateItemTextTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Z[I[I)V

    return-void
.end method
