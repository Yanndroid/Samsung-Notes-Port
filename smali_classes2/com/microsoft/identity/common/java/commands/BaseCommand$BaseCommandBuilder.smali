.class public abstract Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/commands/BaseCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseCommandBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Lcom/microsoft/identity/common/java/commands/BaseCommand<",
        "TT;>;B:",
        "Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder<",
        "TT;TC;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

.field private controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/controllers/BaseController;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

.field private publicApiId:Ljava/lang/String;


# direct methods
.method private static $fillValuesFromInstanceIntoBuilder(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand<",
            "TT;>;",
            "Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder<",
            "TT;**>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->access$000(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->parameters(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->access$100(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->callback(Lcom/microsoft/identity/common/java/commands/CommandCallback;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->access$200(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->controllers(Ljava/util/List;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->access$300(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->publicApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Lcom/microsoft/identity/common/java/commands/CommandCallback;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->controllers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->publicApiId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TB;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->$fillValuesFromInstanceIntoBuilder(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lcom/microsoft/identity/common/java/commands/BaseCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public callback(Lcom/microsoft/identity/common/java/commands/CommandCallback;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/CommandCallback;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/CommandCallback;",
            ")TB;"
        }
    .end annotation

    const-string v0, "callback is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    move-result-object p1

    return-object p1
.end method

.method public controllers(Ljava/util/List;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/controllers/BaseController;",
            ">;)TB;"
        }
    .end annotation

    const-string v0, "controllers is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->controllers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    move-result-object p1

    return-object p1
.end method

.method public parameters(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;",
            ")TB;"
        }
    .end annotation

    const-string v0, "parameters is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    move-result-object p1

    return-object p1
.end method

.method public publicApiId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "publicApiId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->publicApiId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseCommand.BaseCommandBuilder(parameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->parameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->callback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controllers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->controllers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publicApiId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/BaseCommand$BaseCommandBuilder;->publicApiId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
