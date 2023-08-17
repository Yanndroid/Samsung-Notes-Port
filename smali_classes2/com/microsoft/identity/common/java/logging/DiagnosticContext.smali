.class public final enum Lcom/microsoft/identity/common/java/logging/DiagnosticContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/logging/DiagnosticContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

.field public static final CORRELATION_ID:Ljava/lang/String; = "correlation_id"

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final THREAD_NAME:Ljava/lang/String; = "thread_name"


# instance fields
.field private final transient REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/microsoft/identity/common/java/logging/IRequestContext;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "SE_BAD_FIELD_STORE"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->$VALUES:[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext$1;

    invoke-direct {p1, p0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext$1;-><init>(Lcom/microsoft/identity/common/java/logging/DiagnosticContext;)V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/logging/DiagnosticContext;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->$VALUES:[Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public getRequestContext()Lcom/microsoft/identity/common/java/logging/IRequestContext;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/logging/IRequestContext;

    return-object v0
.end method

.method public setRequestContext(Lcom/microsoft/identity/common/java/logging/IRequestContext;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thread_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thread_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->REQUEST_CONTEXT_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
