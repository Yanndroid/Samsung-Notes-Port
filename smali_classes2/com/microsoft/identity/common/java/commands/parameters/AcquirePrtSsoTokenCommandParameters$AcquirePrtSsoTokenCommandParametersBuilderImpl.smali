.class final Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;
.super Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AcquirePrtSsoTokenCommandParametersBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder<",
        "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;",
        "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method
