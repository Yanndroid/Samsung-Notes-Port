.class final Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;
.super Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrokerRopcTokenCommandParametersBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilder<",
        "Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;",
        "Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/RopcTokenCommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/RopcTokenCommandParameters$RopcTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/BrokerRopcTokenCommandParameters$BrokerRopcTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method
