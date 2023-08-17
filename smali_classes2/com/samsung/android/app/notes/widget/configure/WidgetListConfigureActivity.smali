.class public Lcom/samsung/android/app/notes/widget/configure/WidgetListConfigureActivity;
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
    const/4 v0, -0x1

    return v0
.end method

.method public getProviderClass()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    return-object v0
.end method

.method public getWidgetCount()I
    .locals 3

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/configure/WidgetListConfigureActivity;->getProviderClass()Ljava/lang/Class;

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

    array-length v0, v0

    return v0
.end method

.method public startPickerActivity(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->startMultiSelectPicker(I)V

    return-void
.end method
