.class public abstract Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
.super Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AndroidActivityInteractiveTokenCommandParametersBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;",
        "B:",
        "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method private static $fillValuesFromInstanceIntoBuilder(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->access$000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->activity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public $fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TB;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;

    invoke-static {p1, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->$fillValuesFromInstanceIntoBuilder(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public activity(Landroid/app/Activity;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidActivityInteractiveTokenCommandParameters.AndroidActivityInteractiveTokenCommandParametersBuilder(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
