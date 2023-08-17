.class public final Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;
.super Lcom/microsoft/identity/common/logging/DiagnosticContext;
.source "SourceFile"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "NM_SAME_SIMPLE_NAME_AS_SUPERCLASS"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiagnosticContext"

.field private static sLogDeprecationWarning:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/logging/DiagnosticContext;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->logDeprecationWarning()V

    invoke-static {}, Lcom/microsoft/identity/common/logging/DiagnosticContext;->clear()V

    return-void
.end method

.method public static getRequestContext()Lcom/microsoft/identity/common/internal/logging/IRequestContext;
    .locals 2

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->logDeprecationWarning()V

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext$1;

    invoke-direct {v1, v0}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext$1;-><init>(Lcom/microsoft/identity/common/java/logging/IRequestContext;)V

    return-object v1
.end method

.method private static logDeprecationWarning()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":logDeprecationWarning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->sLogDeprecationWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->sLogDeprecationWarning:Z

    const-string v1, "This class is deprecated. Migrate usage to: com.microsoft.identity.common.logging.DiagnosticContext"

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRequestContext(Lcom/microsoft/identity/common/internal/logging/IRequestContext;)V
    .locals 0

    invoke-static {p0}, Lcom/microsoft/identity/common/logging/DiagnosticContext;->setRequestContext(Lcom/microsoft/identity/common/java/logging/IRequestContext;)V

    invoke-static {}, Lcom/microsoft/identity/common/internal/logging/DiagnosticContext;->logDeprecationWarning()V

    return-void
.end method
