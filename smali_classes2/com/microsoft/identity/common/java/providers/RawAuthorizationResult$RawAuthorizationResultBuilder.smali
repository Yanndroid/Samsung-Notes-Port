.class Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawAuthorizationResultBuilder"
.end annotation


# instance fields
.field private authorizationFinalUri:Ljava/net/URI;

.field private exception:Lcom/microsoft/identity/common/java/exception/BaseException;

.field private resultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->build()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri(Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    return-object p0
.end method

.method private authorizationFinalUri(Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 0
    .param p1    # Ljava/net/URI;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri:Ljava/net/URI;

    return-object p0
.end method

.method private build()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 4

    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri:Ljava/net/URI;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception:Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;-><init>(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;Ljava/net/URI;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-object v0
.end method

.method private exception(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception:Lcom/microsoft/identity/common/java/exception/BaseException;

    return-object p0
.end method

.method private resultCode(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawAuthorizationResult.RawAuthorizationResultBuilder(resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->resultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authorizationFinalUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->authorizationFinalUri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->exception:Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
