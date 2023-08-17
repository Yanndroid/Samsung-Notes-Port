.class public Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mImportanceLevel:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationChannelID:Ljava/lang/String;

.field private mNotificationChannelName:Ljava/lang/String;

.field private mNotificationContentText:Ljava/lang/String;

.field private mService:Landroid/app/Service;

.field private mServiceType:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;


# direct methods
.method public constructor <init>(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/support/senl/nt/base/common/service/ServiceType;)V
    .locals 0
    .param p1    # Landroid/app/Service;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mService:Landroid/app/Service;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationChannelID:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationChannelName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationContentText:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mImportanceLevel:I

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mServiceType:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    return-void
.end method


# virtual methods
.method public getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationChannelID:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationChannelName:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mImportanceLevel:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationBuilder:Landroid/app/Notification$Builder;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public getNotificationChannelID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mNotificationContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationID()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getService()Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mService:Landroid/app/Service;

    return-object v0
.end method

.method public getServiceType()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;->mServiceType:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    return-object v0
.end method
