.class final Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;
.super Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenerateShrCommandParametersBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder<",
        "Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;",
        "Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;)V

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;
    .locals 0

    return-object p0
.end method
