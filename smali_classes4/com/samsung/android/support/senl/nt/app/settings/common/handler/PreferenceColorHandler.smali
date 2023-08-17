.class public Lcom/samsung/android/support/senl/nt/app/settings/common/handler/PreferenceColorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSummaryColor(Landroid/content/Context;Z)I
    .locals 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v0, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_list_summary_text_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->notes_primary_color:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->settings_list_summary_text_color:I

    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method
