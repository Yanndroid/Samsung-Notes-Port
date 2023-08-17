.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private static logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;
    .locals 2

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p0, v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isTcTypeChanged(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {p0, v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isTcTypeChanged(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SenderHolder;->getInstance(Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v1

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    sput-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :cond_1
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sender type is invalid : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingE(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :goto_0
    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-direct {p1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    goto :goto_0

    :goto_1
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    invoke-static {p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SenderHolder;->putInstance(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
