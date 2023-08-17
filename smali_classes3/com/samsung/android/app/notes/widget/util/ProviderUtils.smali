.class public Lcom/samsung/android/app/notes/widget/util/ProviderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderUtils"

.field private static mObserverEasyMode:Landroid/database/ContentObserver;

.field private static sProviderClass:Ljava/lang/Class;

.field private static sShortcutProviderClass:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canIncreaseWidgetCount(Landroid/content/SharedPreferences;IZLjava/lang/String;ILjava/lang/String;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "samsung_note_widget_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "note_none"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "widget_display_device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->DISPLAY_DEVICE_TYPE_NONE:I

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "widget_home_mode"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "home_mode_none"

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canIncreaseWidgetCount - id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", uuid: "

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", referUuid: "

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ProviderUtils"

    invoke-static {p4, p3}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canIncreaseWidgetCount - widgetHomeMode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentHomeMode: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    if-eqz p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "canIncreaseWidgetCount - widgetDisplay: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", currentDisplay: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :cond_2
    :goto_1
    return v2

    :cond_3
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_4
    return v4
.end method

.method public static getWidgetIdList(Landroid/content/Context;)[I
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->sShortcutProviderClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->sProviderClass:Ljava/lang/Class;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    array-length v0, v1

    array-length v2, p0

    add-int/2addr v0, v2

    new-array v0, v0, [I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static isAvailableToReferWidget(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 2

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->isWidgetMaxCount(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method public static isAvailableToReferWidget(Landroid/content/Context;Ljava/lang/Class;I)Z
    .locals 2

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    const/4 p2, -0x1

    aput p2, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->isWidgetMaxCount(Landroid/content/Context;[I)Z

    move-result p0

    return p0
.end method

.method public static isProviderWidget(Landroid/content/Context;I)Z
    .locals 4

    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->sProviderClass:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isWidgetMaxCount(Landroid/content/Context;[I)Z
    .locals 14

    const-string/jumbo v0, "widgetPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getDisplayDeviceType(Landroid/content/Context;)I

    move-result v8

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/HomeScreenUtils;->getHomeMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/app/notes/widget/common/DeviceTypeChecker;->isFoldDeviceType()Z

    move-result v10

    array-length v11, p1

    move v12, v1

    move v13, v12

    :goto_0
    if-ge v12, v11, :cond_2

    aget v6, p1, v12

    const/4 v2, -0x1

    if-ne v6, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "note_none"

    move-object v2, v0

    move v3, v8

    move v4, v10

    move-object v7, v9

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->canIncreaseWidgetCount(Landroid/content/SharedPreferences;IZLjava/lang/String;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v13, v13, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWidgetMaxCount - count : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProviderUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSepLiteModel(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    goto :goto_2

    :cond_3
    const/16 p0, 0x14

    :goto_2
    if-ge v13, p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static registerEasyModeContentObserver(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    const-string v1, "ProviderUtils"

    const-string v2, "create EasyMode ContentObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getEasyModeUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setProviderClasses(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->sProviderClass:Ljava/lang/Class;

    sput-object p1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->sShortcutProviderClass:Ljava/lang/Class;

    return-void
.end method

.method public static unregisterEasyModeContentObserver(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    const-string v1, "ProviderUtils"

    const-string/jumbo v2, "unregisterEasyModeContentObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->mObserverEasyMode:Landroid/database/ContentObserver;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
