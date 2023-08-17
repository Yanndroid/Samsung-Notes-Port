.class public Lcom/samsung/android/app/notes/widget/theme/ToolbarThemeManager;
.super Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;-><init>()V

    return-void
.end method

.method private updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V
    .locals 8

    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    new-array v7, v0, [I

    fill-array-data v7, :array_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateWidgetTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[I[I[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f06063f
        0x7f06063e
        0x7f060610
        0x7f06060f
    .end array-data

    :array_1
    .array-data 4
        0x7f0a00da
        0x7f0a0459
    .end array-data

    :array_2
    .array-data 4
        0x7f080730
        0x7f080737
    .end array-data
.end method

.method private updateTitleAndIconColor(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V
    .locals 7

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseWidgetThemeManager;->updateTitleTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;[I[I)I

    move-result p1

    const p3, 0x7f0a08d2

    const-string/jumbo v0, "setColorFilter"

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const p3, 0x7f0a08ba

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const p3, 0x7f0a0903

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const p3, 0x7f0a08c1

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const p3, 0x7f0a08c6

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const p3, 0x7f0a0902

    invoke-virtual {p2, p3, v0, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060643
        0x7f060642
    .end array-data

    :array_1
    .array-data 4
        0x7f0a08bb
        0x7f0a08bc
    .end array-data
.end method


# virtual methods
.method public applyThemeToWidgetFrame(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/theme/ToolbarThemeManager;->updateTheme(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/theme/ToolbarThemeManager;->updateTitleAndIconColor(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;)V

    return-void
.end method
