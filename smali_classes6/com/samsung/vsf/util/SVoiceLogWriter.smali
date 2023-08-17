.class public Lcom/samsung/vsf/util/SVoiceLogWriter;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final CLEAR_DB_LOGS:I = 0x7

.field public static final CLEAR_QA_LOGS:I = 0x5

.field public static final CLOSE_ALL_DBS:I = 0x6

.field public static final SAVE_LOGS_TO_DATABASE:I = 0x1

.field public static final SAVE_LOGS_TO_FILE:I = 0x2

.field public static final SAVE_QA_LOGS_TO_DB:I = 0x3

.field public static final SAVE_QA_LOGS_TO_FILE:I = 0x4

.field private static lockObject:Ljava/lang/Object;

.field public static logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

.field private dayFormater:Ljava/text/SimpleDateFormat;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private timeFormater:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLogWriter;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->dayFormater:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->timeFormater:Ljava/text/SimpleDateFormat;

    const-string v0, "SVoiceLogWriter"

    iput-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-direct {v1, p1}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    iput-object p1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->saveDataToDB(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->writeDataToFile(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->saveQADataToDB(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/vsf/util/SVoiceLogWriter;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vsf/util/SVoiceLogWriter;->writeQATCsDataToFile(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/vsf/util/SVoiceLogWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->removeAllQATestCaseLogs()V

    return-void
.end method

.method public static synthetic access$500(Lcom/samsung/vsf/util/SVoiceLogWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->closeAllDbs()V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/vsf/util/SVoiceLogWriter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->removeAllDbLogs()V

    return-void
.end method

.method private closeAllDbs()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v0}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->closeAllDbs()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;
    .locals 2

    sget-object v0, Lcom/samsung/vsf/util/SVoiceLogWriter;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/vsf/util/SVoiceLogWriter;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-direct {v1, p0}, Lcom/samsung/vsf/util/SVoiceLogWriter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/vsf/util/SVoiceLogWriter;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_0
    sget-object p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeAllDbLogs()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v0}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->deleteAllLogs()V

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->mContext:Landroid/content/Context;

    const-string v1, "Successfully cleared db logs "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private removeAllQATestCaseLogs()V
    .locals 3

    const-string v0, "SVoiceLogWriter"

    const-string v1, "removeAllQATestCaseLogs() : "

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v0}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->deleteAllQaLogs()V

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->mContext:Landroid/content/Context;

    const-string v1, "Successfully cleared QA Test case logs "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private removeOlderLogs()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v0}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->getAllLogsList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vsf/util/LogData;

    invoke-virtual {v2}, Lcom/samsung/vsf/util/LogData;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v3, v2}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->deleteLogDataData(Lcom/samsung/vsf/util/LogData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveDataToDB(Landroid/os/Bundle;)V
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->dayFormater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->timeFormater:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/samsung/vsf/util/LogData;

    const-string v1, "tag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "logs"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/vsf/util/LogData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {p1, v0}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->saveDataToDatabase(Lcom/samsung/vsf/util/LogData;)V

    return-void
.end method

.method private saveQADataToDB(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SVoiceLogWriter"

    const-string v1, "saveQADataToDB() : "

    invoke-static {v0, v1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "log_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->saveQALogsToDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeDataToFile(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v0, p1}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->writeLogsToFile(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private writeQATCsDataToFile(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "folder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->database:Lcom/samsung/vsf/util/SVoiceLogsDatabase;

    invoke-virtual {v1}, Lcom/samsung/vsf/util/SVoiceLogsDatabase;->getAllQALogsList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "SVoiceLogWriter"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exported QA Test case logs to /SVoiceLogs/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public addActionToQueue(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-direct {p0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->removeOlderLogs()V

    new-instance v0, Lcom/samsung/vsf/util/SVoiceLogWriter$1;

    invoke-direct {v0, p0}, Lcom/samsung/vsf/util/SVoiceLogWriter$1;-><init>(Lcom/samsung/vsf/util/SVoiceLogWriter;)V

    iput-object v0, p0, Lcom/samsung/vsf/util/SVoiceLogWriter;->handler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
