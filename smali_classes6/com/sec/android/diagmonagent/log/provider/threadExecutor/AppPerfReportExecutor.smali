.class public Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field private final config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private final operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/dma/aperf/Operation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    return-void
.end method

.method private ReportAppPerfData()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_0

    const-string v0, "Configuration is null"

    :goto_0
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    if-nez v0, :cond_1

    const-string v0, "operation is null"

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->makeAppPerfData(Lcom/sec/android/diagmonagent/dma/aperf/Operation;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "It can\'t make AppPerfData"

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report AppPerf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->URI:Landroid/net/Uri;

    const-string v3, "report_aperf"

    const-string v4, "aperf"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->printResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Fail to app perf Data"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private makeAppPerfData(Lcom/sec/android/diagmonagent/dma/aperf/Operation;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    const-string v1, "sdkVersion"

    invoke-static {}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serviceId"

    iget-object v2, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->config:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "theOperation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private printResult(Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cause"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ")"

    const-string v2, "("

    const-string v3, ", "

    const-string v4, "Results : "

    if-nez p1, :cond_0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Cause : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->operation:Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getOpId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Results : Failed, Cause : The result might be null"

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->i(Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public onFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/diagmonagent/log/provider/threadExecutor/AppPerfReportExecutor;->ReportAppPerfData()V

    return-void
.end method
