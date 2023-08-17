.class final Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;
.super Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenerateShrCommandBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder<",
        "Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;",
        "Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;-><init>(Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/BaseCommand;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;->build()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;->self()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;->self()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilderImpl;

    move-result-object v0

    return-object v0
.end method
