.class public Lcom/samsung/android/app/notes/widget/WidgetResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetResolver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createCacheInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;

    move-result-object p1

    return-object p1
.end method

.method public createThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetCacheInfo;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 8

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->getWidgetIdList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;->addWidgetIdList(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->createThumbnail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ZLcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;)V

    return-void
.end method

.method public hasWidget(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->getWidgetUuidList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isAvailableToAddWidget(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->isAvailableToAddWidget(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isAvailableToReferWidget(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetProvider;

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->isAvailableToReferWidget(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isSupportedPinToHome(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, "samsung"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/pintohome/PinToHomeCompat;->isPinToHomeSupportedDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    const-string v2, ".sec."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/pintohome/PinToHomeCompat;->isSatisfySecModeConditions(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_3
    return v0
.end method

.method public pinToHme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pinToHme, try to add a widget on Homescreen :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetResolver"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetProvider;

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/app/notes/widget/pintohome/PinToHomeCompat;->requestPinToHome(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->getInstance()Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->removeCacheInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showWidgetAlreadyPinToast(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->showWidgetAlreadyPinToast(Landroid/content/Context;)V

    return-void
.end method

.method public showWidgetMaximumToast(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/app/notes/widget/util/WidgetUtils;->showWidgetMaximumToast(Landroid/content/Context;)V

    return-void
.end method

.method public updateWidgetDocPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->updateWidgetFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcast;->sendUpdateUUIDWidgetBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
