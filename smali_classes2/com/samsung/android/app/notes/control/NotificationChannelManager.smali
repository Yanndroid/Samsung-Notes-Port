.class public Lcom/samsung/android/app/notes/control/NotificationChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NOTIFICATION_CHANNEL_IDS:[Ljava/lang/String;

.field private static final NOTIFICATION_NAME_IDS:[I

.field private static final PREF_CLEAR_NOTIFICATION_KEY:Ljava/lang/String; = "clear_notification_history"

.field private static final PREF_CLEAR_NOTIFICATION_VER:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "CHANNEL_ID_NOTIFICATION_VOICE"

    const-string v1, "RecognitionOldServiceNotificationChannel"

    const-string v2, "channel_id_notification_mde"

    const-string v3, "DocumentServiceNotificationChannel"

    const-string v4, "TextMiningServiceNotificationChannel"

    const-string v5, "ImportServiceNotificationChannel2"

    const-string v6, "ScreenOffMemoServiceNotificationChannel"

    const-string v7, "CollectNotificationChannel"

    const-string v8, "CoeditServiceNotificationChannel"

    const-string v9, "BackupDataNotificationChannel"

    const-string v10, "RestoreDataNotificationChannel"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_CHANNEL_IDS:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_channel_name:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_text_recognition_dialog_title:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    const/4 v3, 0x2

    aput v2, v0, v3

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_save_to_note:I

    const/4 v3, 0x3

    aput v2, v0, v3

    sget v2, Lcom/samsung/android/support/senl/nt/model/R$string;->composer_text_recognition_dialog_title:I

    const/4 v3, 0x4

    aput v2, v0, v3

    sget v2, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_impoort_downloading_title:I

    const/4 v3, 0x5

    aput v2, v0, v3

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->screenoff_screen_off_memo:I

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_title:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->migration_backup_data:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->migration_restore_data:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_NAME_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanNotificationChannels(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->canWorkOnBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "clear_notification_history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_CHANNEL_IDS:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aget-object v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    aget-object v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->deleteNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static updateNotificationChannels(Landroid/content/Context;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_CHANNEL_IDS:[Ljava/lang/String;

    array-length v1, v0

    sget-object v2, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_NAME_IDS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    array-length v1, v0

    goto :goto_0

    :cond_0
    array-length v1, v2

    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->deleteNotUsedNotificationChannels(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    sget-object v3, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_NAME_IDS:[I

    aget v4, v3, v2

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_notification_channel_name_sync:I

    if-ne v4, v5, :cond_2

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->notes:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->notes_jp:I

    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v3, v3, v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v3, v3, v2

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    sget-object v4, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->NOTIFICATION_CHANNEL_IDS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {p0, v4, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->updateNotificationChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
