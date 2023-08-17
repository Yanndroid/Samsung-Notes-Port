.class public Lcom/microsoft/identity/common/logging/DiagnosticContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORRELATION_ID:Ljava/lang/String; = "correlation_id"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final THREAD_NAME:Ljava/lang/String; = "thread_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    return-void
.end method

.method public static getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;

    move-result-object v0

    return-object v0
.end method

.method public static setRequestContext(Lcom/microsoft/identity/common/java/logging/IRequestContext;)V
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->setRequestContext(Lcom/microsoft/identity/common/java/logging/IRequestContext;)V

    return-void
.end method
