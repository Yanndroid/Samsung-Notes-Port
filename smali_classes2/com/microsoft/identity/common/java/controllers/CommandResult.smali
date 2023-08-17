.class public Lcom/microsoft/identity/common/java/controllers/CommandResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/ICommandResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/ICommandResult<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCorrelationId:Ljava/lang/String;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mResultClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

.field private mTelemetryMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;",
            "TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mTelemetryMap:Ljava/util/List;

    const-string v0, "status is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "result is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResult:Ljava/lang/Object;

    if-nez p3, :cond_0

    const-string p3, "UNSET"

    :cond_0
    iput-object p3, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mCorrelationId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResultClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mTelemetryMap:Ljava/util/List;

    const-string v0, "status is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResult:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p2, "UNSET"

    :cond_0
    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mCorrelationId:Ljava/lang/String;

    const-class p1, Ljava/lang/Void;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResultClass:Ljava/lang/Class;

    return-void
.end method

.method public static of(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "status is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "result is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ofNull(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)Lcom/microsoft/identity/common/java/controllers/CommandResult;
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/identity/common/java/controllers/CommandResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "status is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/controllers/CommandResult;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;-><init>(Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mResultClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mStatus:Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    return-object v0
.end method

.method public getTelemetryMap()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mTelemetryMap:Ljava/util/List;

    return-object v0
.end method

.method public setTelemetryMap(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandResult;->mTelemetryMap:Ljava/util/List;

    return-void
.end method
