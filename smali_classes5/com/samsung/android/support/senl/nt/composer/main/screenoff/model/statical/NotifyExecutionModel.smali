.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mNotifiedExecution:Ljava/lang/String;

.field private static mPreInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "NotifyExecutionModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mPreInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotifiedExecution()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mNotifiedExecution:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mPreInitialized:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->initNotifiedExecution()V

    return-void
.end method

.method private static initNotifiedExecution()V
    .locals 3

    const-string v0, "none"

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mNotifiedExecution:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNotifiedExecution# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mNotifiedExecution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isPreInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mPreInitialized:Z

    return v0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "none"

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mNotifiedExecution:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mPreInitialized:Z

    return-void
.end method

.method public static setNotifiedExecution(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNotifiedExecution# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mPreInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "setNotifiedExecution# preInitialized is set"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mPreInitialized:Z

    :cond_0
    sput-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/NotifyExecutionModel;->mNotifiedExecution:Ljava/lang/String;

    return-void
.end method
