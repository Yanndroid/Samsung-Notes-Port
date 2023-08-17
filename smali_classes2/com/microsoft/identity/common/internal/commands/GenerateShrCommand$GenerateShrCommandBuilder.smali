.class public abstract Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;
.super Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GenerateShrCommandBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;",
        "B:",
        "Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder<",
        "Lcom/microsoft/identity/common/java/result/GenerateShrResult;",
        "TC;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/BaseCommand;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;->build()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand;

    move-result-object v0

    return-object v0
.end method

.method public abstract self()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;->self()Lcom/microsoft/identity/common/internal/commands/GenerateShrCommand$GenerateShrCommandBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenerateShrCommand.GenerateShrCommandBuilder(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
