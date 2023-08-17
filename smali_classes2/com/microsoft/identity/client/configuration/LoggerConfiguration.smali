.class public Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/configuration/LoggerConfiguration$SerializedNames;
    }
.end annotation


# instance fields
.field private mLogLevel:Lcom/microsoft/identity/client/Logger$LogLevel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "log_level"
    .end annotation
.end field

.field private mLogcatEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logcat_enabled"
    .end annotation
.end field

.field private mPiiEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pii_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogLevel()Lcom/microsoft/identity/client/Logger$LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->mLogLevel:Lcom/microsoft/identity/client/Logger$LogLevel;

    return-object v0
.end method

.method public isLogcatEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->mLogcatEnabled:Z

    return v0
.end method

.method public isPiiEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/client/configuration/LoggerConfiguration;->mPiiEnabled:Z

    return v0
.end method
