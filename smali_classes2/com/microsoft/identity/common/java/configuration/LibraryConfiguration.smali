.class public Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibraryConfiguration"

.field private static sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;


# instance fields
.field private authorizationInCurrentTask:Z

.field private refreshInEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    iput-boolean p2, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->refreshInEnabled:Z

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;-><init>()V

    return-object v0
.end method

.method private static declared-synchronized createDefaultInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    .locals 3

    const-class v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->builder()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->authorizationInCurrentTask(Z)Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->refreshInEnabled(Z)Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration$LibraryConfigurationBuilder;->build()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    .locals 2

    const-class v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->createDefaultInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    move-result-object v1

    sput-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    :cond_0
    sget-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized intializeLibraryConfiguration(Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;)V
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    if-nez v1, :cond_0

    sput-object p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->sInstance:Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "MsalConfiguration was already initialized"

    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "config is marked non-null but is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isRefreshInEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isRefreshInEnabled()Z

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v0

    const/16 v1, 0x4f

    const/16 v2, 0x61

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x3b

    add-int/2addr v0, v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isRefreshInEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isAuthorizationInCurrentTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->authorizationInCurrentTask:Z

    return v0
.end method

.method public isRefreshInEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->refreshInEnabled:Z

    return v0
.end method
