.class public abstract Lcom/microsoft/identity/common/java/commands/BaseCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/commands/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/commands/ICommand<",
        "TT;>;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"
    }
.end annotation


# instance fields
.field private final callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/controllers/BaseController;",
            ">;"
        }
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final publicApiId:Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder<",
            "TT;**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->access$400(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    const-string v1, "parameters is marked non-null but is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->access$500(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    const-string v1, "callback is marked non-null but is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllers:Ljava/util/List;

    const-string v1, "controllers is marked non-null but is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->access$700(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    const-string v0, "publicApiId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/controllers/BaseController;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/controllers/BaseController;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/commands/CommandCallback;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parameters is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "controller is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "publicApiId is marked non-null but is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/microsoft/identity/common/java/controllers/BaseController;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllers:Ljava/util/List;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/util/List;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/commands/CommandCallback;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/controllers/BaseController;",
            ">;",
            "Lcom/microsoft/identity/common/java/commands/CommandCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parameters is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "controllers is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "publicApiId is marked non-null but is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllers:Ljava/util/List;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    return-object v0
.end method

.method public getControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/controllers/BaseController;",
            ">;"
        }
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllers:Ljava/util/List;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultController()Lcom/microsoft/identity/common/java/controllers/BaseController;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->controllers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/controllers/BaseController;

    return-object v0
.end method

.method public getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    return-object v0
.end method

.method public getPublicApiId()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand;->publicApiId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getControllers()Ljava/util/List;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isEligibleForCaching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willReachTokenEndpoint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
