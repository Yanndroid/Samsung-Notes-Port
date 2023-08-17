.class public Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;
.super Lcom/samsung/android/sdk/smp/display/DisplayManager;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationDisplayManager"

.field private static mIsClickIntentLaunchable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;-><init>()V

    return-void
.end method

.method private buildNotificationWithBuilder(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/Notification;
    .locals 2

    invoke-direct {p0, p1, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotificationBuilder(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p6

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p4

    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    :cond_1
    const/4 p4, 0x2

    if-eq p3, p4, :cond_3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setBigTextBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p6, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setBigPictureBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotificationGroupKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4

    invoke-virtual {p6, p4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_4
    invoke-direct {p0, p6, p7, p8, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setNotificationButtonBuilder(Landroid/app/Notification$Builder;Landroid/os/Bundle;ILandroid/content/Context;)V

    invoke-direct {p0, p1, p2, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-direct {p0, p1, p3, p7}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getBigContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-direct {p0, p6, p2, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getCustomContentViewNotification(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static getApplicationIconWithBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/common/util/PackageManagerUtil;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw p0
.end method

.method private getBannerOrFoldedViewFlipperLayoutId(Landroid/content/Context;)I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getContentsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "type3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "type2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->noti_banner_or_folded_viewflipper_for_tablet:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->noti_banner_or_folded_viewflipper:I

    return p1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get banner or viewflipper layout id. invalid contents type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p1
.end method

.method private getBannerRemoteView(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 2

    const-string v0, "banner"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getBannerOrFoldedViewFlipperLayoutId(Landroid/content/Context;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget p1, Lcom/samsung/android/sdk/smp/R$id;->banner_icon:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to make notification. banner path null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private getBigContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getViewFlipperRemoteView(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getClickPendingIntent(Landroid/content/Context;Ljava/lang/String;IZLjava/util/ArrayList;)Landroid/app/PendingIntent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p5

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getClickPendingIntentSOrOver(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;ZZ)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p1, p2, p4, p5}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getClickIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    const/4 p4, 0x1

    sput-boolean p4, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->mIsClickIntentLaunchable:Z

    const/high16 p4, 0xc000000

    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getContentView(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getViewFlipperRemoteView(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getBannerRemoteView(Landroid/content/Context;Landroid/os/Bundle;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private getCustomContentViewNotification(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Landroid/app/Notification;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    if-eqz p2, :cond_3

    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_3
    if-eqz p3, :cond_4

    iput-object p3, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_4
    return-object p1
.end method

.method private getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "1"

    invoke-static {p1, p2, v0, p3}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0xc000000

    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getExpandedViewFlipperLayoutId(Landroid/content/Context;)I
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getContentsType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "type3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget p1, Lcom/samsung/android/sdk/smp/R$layout;->expanded_viewflipper:I

    return p1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get expanded viewflipper layout id. invalid contents type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p1
.end method

.method private getNotification(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;
    .locals 12

    const-string v0, "f_type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "e_type"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/smp/common/constants/MarketingConstants$NotificationConst;->isSupportType(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ticker"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/smp/SmpConfiguration;->getNotifSmallIcon()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/smp/SmpConfiguration;->getNotifSmallIcon()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getApplicationIcon(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v6, v1

    const-string/jumbo v1, "small_icon"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "click_link"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getLinkList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "p_link"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v9, p2

    move v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->buildNotificationWithBuilder(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/app/Notification;

    move-result-object p2

    move-object v6, p0

    move-object v7, p1

    move-object v8, v0

    move v9, p3

    move v10, v1

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getClickPendingIntent(Landroid/content/Context;Ljava/lang/String;IZLjava/util/ArrayList;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p2

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to get notification. invalid data"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to get notification. IllegalStateException. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to get notification. not supported type"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private getNotificationBuilder(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    return-object p2

    :cond_0
    const/4 v0, -0x1

    const-string v1, "channel_type"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->getNotificationChannelId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNotificationButtonClickIntentUnderS(Ljava/lang/String;ILjava/util/ArrayList;ILandroid/content/Context;Z)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;I",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/smp/SmpReceiver;

    invoke-direct {v0, p5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object p5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_3:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string p2, "com.samsung.android.sdk.smp.MARKETING_BUTTON_3_CLICK"

    goto :goto_0

    :cond_1
    sget-object p5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_2:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string p2, "com.samsung.android.sdk.smp.MARKETING_BUTTON_2_CLICK"

    goto :goto_0

    :cond_2
    sget-object p5, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_1:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string p2, "com.samsung.android.sdk.smp.MARKETING_BUTTON_1_CLICK"

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "p_link"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p5}, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->value()I

    move-result p1

    const-string p2, "feedback_event"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "displayid"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "click_link"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getNotificationButtonClickPendingIntent(Ljava/lang/String;ILjava/util/ArrayList;ILandroid/content/Context;Z)Landroid/app/PendingIntent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;I",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    invoke-static {p5}, Lcom/samsung/android/sdk/smp/common/util/DeviceInfoUtil;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p4

    move-object v6, p3

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getClickPendingIntentSOrOver(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;ZZ)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotificationButtonClickIntentUnderS(Ljava/lang/String;ILjava/util/ArrayList;ILandroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0xc000000

    invoke-static {p5, p4, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static getNotificationButtonLinkList(Landroid/os/Bundle;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click_link"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getNotificationButtonList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getNotificationGroupKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiGroup()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getViewFlipperLayoutId(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getExpandedViewFlipperLayoutId(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getBannerOrFoldedViewFlipperLayoutId(Landroid/content/Context;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getViewFlipperRemoteView(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;
    .locals 6

    if-eqz p3, :cond_0

    const-string v0, "e_flip_path"

    goto :goto_0

    :cond_0
    const-string v0, "f_flip_path"

    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->decodeFileList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string v1, "e_flip_period"

    goto :goto_1

    :cond_1
    const-string v1, "f_flip_period"

    :goto_1
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const-string v3, "e_flip_anim"

    goto :goto_2

    :cond_2
    const-string v3, "f_flip_anim"

    :goto_2
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getViewFlipperResId(I)I

    move-result p2

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/smp/R$layout;->noti_viewflipper:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v2, "setFlipInterval"

    invoke-virtual {v3, p2, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getViewFlipperLayoutId(Landroid/content/Context;Z)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_3

    sget v2, Lcom/samsung/android/sdk/smp/R$id;->flipper_expanded_icon:I

    goto :goto_4

    :cond_3
    sget v2, Lcom/samsung/android/sdk/smp/R$id;->banner_icon:I

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v3, p2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_3

    :cond_4
    return-object v3

    :cond_5
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to make notification. invalid flipper period, images"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException;-><init>()V

    throw p1

    :cond_6
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to make notification. flipper paths null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private getViewFlipperResId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper:I

    return p1

    :cond_0
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper_anim3:I

    return p1

    :cond_1
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper_anim2:I

    return p1

    :cond_2
    sget p1, Lcom/samsung/android/sdk/smp/R$id;->viewflipper_anim1:I

    return p1
.end method

.method private setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "content_title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_text"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v2, "large_icon"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getApplicationIconWithBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    const-string v2, "noti_big_icon"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    return-void

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to build basic notification. invalid params"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private setBigPictureBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string p1, "content_text"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "big_picture"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string/jumbo p1, "sub_content_text"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to build bigpicture notification. invalid map"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private setBigTextBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setBasicBuilder(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string p1, "content_text"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string/jumbo p1, "sub_content_text"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    return-void

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string p2, "fail to build bigtext notification. invalid map"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p1
.end method

.method private setNotificationButtonBuilder(Landroid/app/Notification$Builder;Landroid/os/Bundle;ILandroid/content/Context;)V
    .locals 14

    move-object/from16 v0, p2

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "noti_button"

    invoke-static {v0, v9}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotificationButtonList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v2, "p_link"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move v12, v3

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v9, v12}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotificationButtonLinkList(Landroid/os/Bundle;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    move-object v2, p0

    move-object v3, v1

    move v4, v12

    move/from16 v6, p3

    move-object/from16 v7, p4

    move v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotificationButtonClickPendingIntent(Ljava/lang/String;ILjava/util/ArrayList;ILandroid/content/Context;Z)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v13, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    move-object v3, p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setNotificationConfigs(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Landroid/app/Notification;->when:J

    const/16 v0, 0x10

    iput v0, p2, Landroid/app/Notification;->flags:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getNotiColor()I

    move-result v1

    if-eqz v1, :cond_0

    iput v1, p2, Landroid/app/Notification;->color:I

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x2

    iput v0, p2, Landroid/app/Notification;->priority:I

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/preference/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getVibrateEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getVibratePattern()[J

    move-result-object v1

    if-nez v1, :cond_2

    iget v1, p2, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/Notification;->defaults:I

    goto :goto_0

    :cond_2
    iput-object v1, p2, Landroid/app/Notification;->vibrate:[J

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSoundEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/common/preference/PrefManager;->getSoundUriString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p2, Landroid/app/Notification;->defaults:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroid/app/Notification;->defaults:I

    goto :goto_1

    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;I)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear notification in the noti bar. displayId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public display(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to display. data null"

    :goto_0
    invoke-static {p2, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->printBundle(Landroid/os/Bundle;)V

    const/4 v1, -0x1

    const-string v2, "displayid"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to display. invalid displayid"

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getNotification(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/Notification;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->setNotificationConfigs(Landroid/content/Context;Landroid/app/Notification;)V

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-boolean v1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->mIsClickIntentLaunchable:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v1, "landing_page_may_not_launchable"

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p3, p1, v1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onSuccess(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v1, "content_title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "ticker"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v6, v1

    const-string v1, "content_text"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "link_uris"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v2, "display"

    const-string v3, "noti"

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v5

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/sdk/smp/common/util/BroadcastUtil;->broadcastMarketingDisplay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_1
    move-exception p2

    sget-object v0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_3
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "app_icon_not_found"

    goto :goto_3

    :catch_4
    move-exception p2

    goto :goto_2

    :catch_5
    move-exception p2

    :goto_2
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v0, "img_decode_fail"

    goto :goto_3

    :catch_6
    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_3
    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public getClickPendingIntentSOrOver(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;ZZ)Landroid/app/PendingIntent;
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;ZZ)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get click pending intent. isButton:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPLink:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_VIA_NOTIFICATION:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-direct {v12, v0}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;-><init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v0, 0x0

    move-object v14, v0

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/high16 v15, 0xc000000

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->parse(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click intent : switch to delete intent. link type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v4, 0x1

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getLandingIntentByLinkType(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->mIsClickIntentLaunchable:Z

    invoke-static {v7, v9, v0, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v14, :cond_0

    move-object/from16 v14, v16

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator;->getLandingIntentByLinkType(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;ZZZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v2, "landing page may not be launchable"

    invoke-static {v1, v8, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->mIsClickIntentLaunchable:Z

    invoke-static {v7, v9, v0, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/smp/display/NotificationDisplayManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to get click intent. nothing supported"

    invoke-static {v0, v8, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    const-string v1, "landing_page_error"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
