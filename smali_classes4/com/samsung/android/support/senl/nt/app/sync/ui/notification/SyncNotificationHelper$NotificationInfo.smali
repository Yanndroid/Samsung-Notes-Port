.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationInfo"
.end annotation


# instance fields
.field public errorType:I

.field public importType:I

.field public key:I

.field public permission:[Ljava/lang/String;

.field public tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->key:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->errorType:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->importType:I

    return-void
.end method

.method public constructor <init>(ILcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->key:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->tipCard:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->key:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper$NotificationInfo;->permission:[Ljava/lang/String;

    return-void
.end method
