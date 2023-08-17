.class public abstract Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
.super Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AcquirePrtSsoTokenCommandParametersBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;",
        "B:",
        "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder<",
        "TC;TB;>;>",
        "Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder<",
        "TC;TB;>;"
    }
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private homeAccountId:Ljava/lang/String;

.field private localAccountId:Ljava/lang/String;

.field private requestAuthority:Ljava/lang/String;

.field private ssoUrl:Ljava/lang/String;


# direct methods
.method private static $fillValuesFromInstanceIntoBuilder(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;",
            "Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder<",
            "**>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;->access$000(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;->access$100(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;->access$200(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->accountName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;->access$300(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->ssoUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;->access$400(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->requestAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;-><init>()V

    return-void
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->homeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->localAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->ssoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->requestAuthority:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TB;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;

    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->$fillValuesFromInstanceIntoBuilder(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->$fillValuesFrom(Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public accountName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->accountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract build()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->build()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters;

    move-result-object v0

    return-object v0
.end method

.method public homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->homeAccountId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->localAccountId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public requestAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->requestAuthority:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abstract self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ssoUrl(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->ssoUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->self()Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcquirePrtSsoTokenCommandParameters.AcquirePrtSsoTokenCommandParametersBuilder(super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters$CommandParametersBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homeAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->homeAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->localAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ssoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->ssoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestAuthority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/parameters/AcquirePrtSsoTokenCommandParameters$AcquirePrtSsoTokenCommandParametersBuilder;->requestAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
