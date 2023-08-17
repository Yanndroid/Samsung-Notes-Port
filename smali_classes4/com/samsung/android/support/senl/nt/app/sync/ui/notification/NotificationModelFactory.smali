.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/IModelNotification;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelFactory$1;->$SwitchMap$com$samsung$android$app$notes$sync$infos$ModelType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/ShareNotification;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/ShareNotification;-><init>()V

    return-object p0
.end method
