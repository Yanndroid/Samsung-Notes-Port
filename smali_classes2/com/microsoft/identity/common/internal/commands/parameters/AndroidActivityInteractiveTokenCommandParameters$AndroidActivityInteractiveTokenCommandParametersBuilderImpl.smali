.class final Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;
.super Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidActivityInteractiveTokenCommandParametersBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder<",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;

    move-result-object v0

    return-object v0
.end method
