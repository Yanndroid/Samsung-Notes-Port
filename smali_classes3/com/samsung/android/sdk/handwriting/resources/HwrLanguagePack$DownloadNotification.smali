.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadNotification"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mCanceled:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDownloadingText:Ljava/lang/CharSequence;

.field private mFailed:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mLanguage:Ljava/lang/CharSequence;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mbShow:Z

.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mAppName:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mTitleText:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mDownloadingText:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    const-string p2, "Canceled"

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mCanceled:Ljava/lang/CharSequence;

    const-string p2, "Failed"

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mFailed:Ljava/lang/CharSequence;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mAppName:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mTitleText:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mDownloadingText:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mCanceled:Ljava/lang/CharSequence;

    iput-object p9, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mFailed:Ljava/lang/CharSequence;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->createNotification(IZZII)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->createNotificationForNegative(IZI)V

    return-void
.end method

.method private createNotification(IZZII)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz p3, :cond_4

    const p3, 0x1080081

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v0, p5, 0x64

    div-int/2addr v0, p4

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "% "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mDownloadingText:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p4, p5, p2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_4
    const p3, 0x1080082

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    iget-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p2, p2, p2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private createNotificationForNegative(IZI)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    const/high16 v1, 0x8000000

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const p2, 0x1080082

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 p2, 0x2

    if-ne p3, p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mCanceled:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mFailed:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public isNotiBarShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    return v0
.end method

.method public showNotiBar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress bar will be hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification disappeared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    return-void
.end method
