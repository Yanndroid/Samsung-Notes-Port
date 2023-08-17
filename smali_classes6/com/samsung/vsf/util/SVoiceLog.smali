.class public Lcom/samsung/vsf/util/SVoiceLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SYSTEM_DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final SYSTEM_DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final SYSTEM_DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field private static enableLogging:Z = false

.field private static logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter; = null

.field private static m_isEnabled:Z = true

.field private static m_isEnabled_versbose:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->m_isEnabled_versbose:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDbLogs()V
    .locals 3

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {v1, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static clearQATcsLogData()V
    .locals 3

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {v1, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static closeLogsDbs()V
    .locals 3

    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {v1, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->m_isEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/vsf/util/SVoiceLog;->getThread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : VSP::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/vsf/util/SVoiceLog;->getThread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : VSP::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static exportQATcsLogtoFile(Landroid/os/Bundle;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p0, 0x4

    iput p0, v0, Landroid/os/Message;->what:I

    sget-object p0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {p0, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private static getThread()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->m_isEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/vsf/util/SVoiceLog;->getThread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : VSP::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static saveLogIntoDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "logs"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {p0, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static saveLogIntoFile(Landroid/os/Bundle;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {p0, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static saveQALogIntoDB(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->enableLogging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->getInstance(Landroid/content/Context;)Lcom/samsung/vsf/util/SVoiceLogWriter;

    move-result-object v0

    sput-object v0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "log_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x3

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/samsung/vsf/util/SVoiceLog;->logWriterThread:Lcom/samsung/vsf/util/SVoiceLogWriter;

    invoke-virtual {p0, v0}, Lcom/samsung/vsf/util/SVoiceLogWriter;->addActionToQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->m_isEnabled_versbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/vsf/util/SVoiceLog;->getThread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : VSP::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/vsf/util/SVoiceLog;->getThread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : VSP::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/vsf/util/SVoiceLog;->m_isEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/vsf/util/SVoiceLog;->getThread()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : VSP::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
