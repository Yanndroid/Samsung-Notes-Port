.class public Lcom/samsung/android/app/notes/widget/configure/ShowNotesWidgetConfigureActivity;
.super Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxCount()I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepLiteModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/16 v0, 0x14

    return v0
.end method

.method public getProviderClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetProvider;

    return-object v0
.end method

.method public getWidgetCount()I
    .locals 14

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/configure/ShowNotesWidgetConfigureActivity;->getProviderClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWidgetCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", widgetIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsWidgetConfigureActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "widgetPref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getDisplayDeviceType(Landroid/content/Context;)I

    move-result v9

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getHomeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/samsung/android/app/notes/widget/common/DeviceTypeChecker;->isFoldDeviceType()Z

    move-result v11

    array-length v12, v0

    move v13, v2

    :goto_0
    if-ge v2, v12, :cond_1

    aget v7, v0, v2

    const-string v6, "note_none"

    move-object v3, v1

    move v4, v9

    move v5, v11

    move-object v8, v10

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->canIncreaseWidgetCount(Landroid/content/SharedPreferences;IZLjava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v13
.end method

.method public startPickerActivity(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->startSingleSelectPicker(I)V

    return-void
.end method
