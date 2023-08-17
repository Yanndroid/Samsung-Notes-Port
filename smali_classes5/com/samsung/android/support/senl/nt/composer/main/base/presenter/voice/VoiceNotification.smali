.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHANNEL_ID_NOTIFICATION_VOICE:Ljava/lang/String; = "CHANNEL_ID_NOTIFICATION_VOICE"

.field private static final GROUP_KEY_VOICE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.app.notes.VOICE_NOTIFICATION"

.field private static final IS_BUILD_VERSION_MORE_THAN_P:Z

.field private static final IS_BUILD_VERSION_UNDER_N:Z

.field private static final REMOTEVIEW_MAX_USE_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAppIconVisible:Z

.field private isLEDOn:Z

.field private mCancelBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private final mIsRecordingNotification:Z

.field private mMediaButtonPrimaryColor:I

.field private mPauseBitmap:Landroid/graphics/Bitmap;

.field private mPendingIntentForStartActivity:Landroid/app/PendingIntent;

.field private mPlayBitmap:Landroid/graphics/Bitmap;

.field private mProgress:I

.field private mRecordBitmap:Landroid/graphics/Bitmap;

.field private mRemoteViewUsedCount:I

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private mStopBitmap:Landroid/graphics/Bitmap;

.field private mSubTitleFontColor:I

.field private mTitleFontColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "VoiceNotification"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sput-boolean v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_UNDER_N:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_MORE_THAN_P:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPauseBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPlayBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRecordBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mStopBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mCancelBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViewUsedCount:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mMediaButtonPrimaryColor:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mTitleFontColor:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mSubTitleFontColor:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mDensity:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mProgress:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPendingIntentForStartActivity:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_pause:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_play:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_record:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_stop:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_cancel:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mIsRecordingNotification:Z

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mProgress:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mDensity:I

    return-void
.end method

.method private createNewBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/spr/drawable/SprDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/SprDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getInternalMediaButtonColorValue()I

    move-result v3

    if-eqz v3, :cond_0

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_record:I

    if-eq v4, p1, :cond_0

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/spr/drawable/SprDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/spr/drawable/SprDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-object v1
.end method

.method private createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v3, "createNotification] LED ON"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getBuilder(Landroid/widget/RemoteViews;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v3, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/app/Notification;->flags:I

    const v2, -0xffff01

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x1f4

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v2, "createNotification] LED OFF"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getBuilder(Landroid/widget/RemoteViews;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    :goto_0
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/app/Notification;->flags:I

    sget-boolean v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_MORE_THAN_P:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getBuilder(Landroid/widget/RemoteViews;Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    :cond_3
    return-object v0
.end method

.method private getActionPendingIntentForBroadcast(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsungnotes_voice_noti"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "voice_noti_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getActionPendingIntentForBroadcast(ILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsungnotes_voice_noti"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "voice_noti_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    const/high16 p3, 0xc000000

    invoke-static {p2, p1, v0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getActionPendingIntentForStartActivity(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/NotificationTaskMoveActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "fromVoiceNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private getBuilder(Landroid/widget/RemoteViews;Z)Landroid/app/Notification$Builder;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHANNEL_ID_NOTIFICATION_VOICE"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_UNDER_N:Z

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mIsRecordingNotification:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->stat_notify_empty:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->stat_notify_notes:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    sget-boolean v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_MORE_THAN_P:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->colorized_notification_primary:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->notification_primary:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :goto_2
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    if-nez v1, :cond_3

    new-instance p1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {p1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    if-eqz p2, :cond_3

    new-array p1, v4, [J

    const/4 p2, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p1, p2

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPendingIntentForStartActivity:Landroid/app/PendingIntent;

    if-nez p1, :cond_4

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getActionPendingIntentForStartActivity(I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPendingIntentForStartActivity:Landroid/app/PendingIntent;

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPendingIntentForStartActivity:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const-string p1, "com.samsung.android.app.notes.VOICE_NOTIFICATION"

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method private static getColorIntToHex(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0xffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "#%06X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getInternalMediaButtonColorValue()I
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mMediaButtonPrimaryColor:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isGalaxyOn5ChinaModel()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_MORE_THAN_P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->colorized_notification_button_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mMediaButtonPrimaryColor:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "getInternalMediaButtonColorValue] Normal P Model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$style;->VoiceNotificationSecondaryText:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mMediaButtonPrimaryColor:I

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInternalMediaButtonColorValue] Normal Model] SecondaryColor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getColorIntToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "getInternalMediaButtonColorValue] China Model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x40000001    # -1.9999999f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mMediaButtonPrimaryColor:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mMediaButtonPrimaryColor:I

    return v0

    nop

    :array_0
    .array-data 4
        0x1010098
        0x1010095
    .end array-data
.end method

.method private getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;ZZ)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method private getRecorderViews(ZLjava/lang/String;ZZ)Landroid/widget/RemoteViews;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViewUsedCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViewUsedCount:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mDensity:I

    if-ne v1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecorderViews] create new remoteViews. mIsRecordingNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mIsRecordingNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViewUsedCount:I

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mDensity:I

    if-eq v1, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Density was changed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->resetSavedValues()V

    :cond_2
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->voice_remoteview_notification:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_time:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getTitleFontColorValue()I

    move-result v1

    const-string v2, "setTextColor"

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_status:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSubTitleFontColorValue()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-boolean p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_UNDER_N:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_icon:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->voice_notification_state_m:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mIsRecordingNotification:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->initRecorderRemoteViews(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->initPlayerRemoteViews(Z)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method private getSprBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_pause:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPauseBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "bitmap of quickpanel_ic_pause == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPauseBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_play:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPlayBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "bitmap of quickpanel_ic_play == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPlayBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_record:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRecordBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "bitmap of quickpanel_ic_record == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRecordBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_stop:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mStopBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "bitmap of quickpanel_ic_stop == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mStopBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_cancel:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mCancelBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "bitmap of quickpanel_ic_cancel == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mCancelBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSubTitleFontColorValue()I
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mSubTitleFontColor:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isGalaxyOn5ChinaModel()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_MORE_THAN_P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->colorized_notification_second_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mSubTitleFontColor:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "getSubTitleFontColorValue] Normal P Model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$style;->VoiceNotificationSecondaryText:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mSubTitleFontColor:I

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubTitleFontColorValue] Normal Model] SecondaryColor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getColorIntToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "getSubTitleFontColorValue] China Model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x40000001    # -1.9999999f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mSubTitleFontColor:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mSubTitleFontColor:I

    return v0

    nop

    :array_0
    .array-data 4
        0x1010098
        0x1010095
    .end array-data
.end method

.method private getTitleFontColorValue()I
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mTitleFontColor:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isGalaxyOn5ChinaModel()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_MORE_THAN_P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->colorized_notification_first_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mTitleFontColor:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "getTitleFontColorValue] Normal P Model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$style;->VoiceNotificationTitleText:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mTitleFontColor:I

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTitleFontColorValue] Normal Model] TitleText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getColorIntToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    const-string v1, "getTitleFontColorValue] China Model"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mTitleFontColor:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mTitleFontColor:I

    return v0

    nop

    :array_0
    .array-data 4
        0x1010098
        0x1010095
    .end array-data
.end method

.method private initPlayerRemoteViews(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_first_button:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_play:I

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->setSprImageResources(Landroid/widget/RemoteViews;III)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_voice_ass_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_status:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_status_paused:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_first_button:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_pause:I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->setSprImageResources(Landroid/widget/RemoteViews;III)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_voice_ass_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_status:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_status_playing:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_second_button:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_button_cancel:I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_cancel:I

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->setSprImageResources(Landroid/widget/RemoteViews;III)V

    return-void
.end method

.method private initRecorderRemoteViews(Z)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_first_button:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_status:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_status_paused:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_second_button:I

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_record:I

    const/16 v3, 0x9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->setSprImageResources(Landroid/widget/RemoteViews;III)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_voice_ass_record:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_status:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_status_recording:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_second_button:I

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_stop:I

    const/4 v7, 0x2

    const/4 v9, 0x1

    const-string v8, "voice_stop_record_noti"

    move-object v3, p0

    move v5, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->setSprImageResources(Landroid/widget/RemoteViews;IIILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_voice_ass_stop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_button_cancel:I

    sget v6, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_cancel:I

    const/4 v7, 0x3

    const-string v8, "voice_new_record"

    move-object v3, p0

    move v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->setSprImageResources(Landroid/widget/RemoteViews;IIILjava/lang/String;Z)V

    return-void
.end method

.method private resetSavedValues()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mDensity:I

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_pause:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPauseBitmap:Landroid/graphics/Bitmap;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_play:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mPlayBitmap:Landroid/graphics/Bitmap;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_record:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mRecordBitmap:Landroid/graphics/Bitmap;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_stop:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mStopBitmap:Landroid/graphics/Bitmap;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->quickpanel_ic_cancel:I

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mCancelBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setSprImageResources(Landroid/widget/RemoteViews;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getActionPendingIntentForBroadcast(I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private setSprImageResources(Landroid/widget/RemoteViews;IIILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getSprBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getActionPendingIntentForBroadcast(ILjava/lang/String;Z)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchNotification] isRecordNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mIsRecordingNotification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mIsRecordingNotification:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mProgress:I

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->createTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_2
    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mProgress:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->createTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingPaused()Z

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isLEDOn:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public updateNewRecordingStatus(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)Landroid/app/Notification;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;ZZ)Landroid/widget/RemoteViews;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public updatePlayStatus(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)Landroid/app/Notification;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->PLAY_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public updatePlayTime(Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getPlayProgress()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->createTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlayingPaused()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_time:I

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public updateRecordStatus(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;)Landroid/app/Notification;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;->RECORD_PAUSE:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-ne p2, v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public updateRecordTime(Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getRecordProgress()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->createTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingPaused()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->getRecorderViews(ZLjava/lang/String;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_time:I

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget-boolean p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->IS_BUILD_VERSION_UNDER_N:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->notification_voice_icon:I

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    if-eqz v0, :cond_1

    const v0, 0x106000d

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->voice_notification_state_m:I

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->isAppIconVisible:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceNotification;->createNotification(Landroid/widget/RemoteViews;)Landroid/app/Notification;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method
