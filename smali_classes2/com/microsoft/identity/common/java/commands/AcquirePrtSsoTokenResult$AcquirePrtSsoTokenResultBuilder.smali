.class public Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcquirePrtSsoTokenResultBuilder"
.end annotation


# instance fields
.field private accountAuthority:Ljava/lang/String;

.field private accountName:Ljava/lang/String;

.field private cookieContent:Ljava/lang/String;

.field private cookieName:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private homeAccountId:Ljava/lang/String;

.field private localAccountId:Ljava/lang/String;

.field private telemetry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accountAuthority(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->accountAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public accountName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->accountName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult;
    .locals 10

    new-instance v9, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->homeAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->localAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->error:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->accountAuthority:Ljava/lang/String;

    iget-object v6, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->cookieName:Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->cookieContent:Ljava/lang/String;

    iget-object v8, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->telemetry:Ljava/util/Map;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v9
.end method

.method public cookieContent(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->cookieContent:Ljava/lang/String;

    return-object p0
.end method

.method public cookieName(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->cookieName:Ljava/lang/String;

    return-object p0
.end method

.method public error(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->error:Ljava/lang/String;

    return-object p0
.end method

.method public homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->homeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->localAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public telemetry(Ljava/util/Map;)Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;"
        }
    .end annotation

    const-string v0, "telemetry is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->telemetry:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AcquirePrtSsoTokenResult.AcquirePrtSsoTokenResultBuilder(homeAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->homeAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", localAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->localAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountAuthority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->accountAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cookieName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->cookieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cookieContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->cookieContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", telemetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/commands/AcquirePrtSsoTokenResult$AcquirePrtSsoTokenResultBuilder;->telemetry:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
