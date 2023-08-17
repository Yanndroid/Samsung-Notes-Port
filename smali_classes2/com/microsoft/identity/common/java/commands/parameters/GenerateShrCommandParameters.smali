.class public Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;
.super Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;,
        Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;
    }
.end annotation


# instance fields
.field private mHomeAccountId:Ljava/lang/String;

.field private mPopParameters:Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;)V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;->access$200(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->mHomeAccountId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;->access$300(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;)Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->mPopParameters:Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->mHomeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;)Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->mPopParameters:Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    return-object p0
.end method

.method public static builder()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->getHomeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->getHomeAccountId()Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->getPopParameters()Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    move-result-object p1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->getPopParameters()Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    move-result-object v1

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getPopParameters()Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->mPopParameters:Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->getHomeAccountId()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x2b

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->getPopParameters()Lcom/microsoft/identity/common/java/authscheme/IPoPAuthenticationSchemeParams;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public bridge synthetic toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;->toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder<",
            "**>;"
        }
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilderImpl;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$1;)V

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/GenerateShrCommandParameters$GenerateShrCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method
