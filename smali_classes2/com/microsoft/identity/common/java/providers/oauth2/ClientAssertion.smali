.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/ClientAssertion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CLIENT_ASSERTION_TYPE:Ljava/lang/String; = "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"


# instance fields
.field private mClientAssertion:Ljava/lang/String;

.field private mClientAssertionType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "urn:ietf:params:oauth:client-assertion-type:jwt-bearer"

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/ClientAssertion;->mClientAssertionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientAssertion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/ClientAssertion;->mClientAssertion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientAssertionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/ClientAssertion;->mClientAssertionType:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAssertion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/ClientAssertion;->mClientAssertion:Ljava/lang/String;

    return-void
.end method

.method public setClientAssertionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/ClientAssertion;->mClientAssertionType:Ljava/lang/String;

    return-void
.end method
