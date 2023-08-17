.class public Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;,
        Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    }
.end annotation


# instance fields
.field private final transient activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;)V

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->access$100(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;)Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilderImpl;-><init>(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$1;)V

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters$InteractiveTokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters$TokenCommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters;->toBuilder()Lcom/microsoft/identity/common/internal/commands/parameters/AndroidActivityInteractiveTokenCommandParameters$AndroidActivityInteractiveTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method
