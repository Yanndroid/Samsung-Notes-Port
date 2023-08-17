.class public Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JweHeaderBuilder"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private encryptionAlgorithm:Ljava/lang/String;

.field private keyID:Ljava/lang/String;

.field private keyUse:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private x509Certificate:Ljava/lang/String;

.field private x509CertificateThumbprint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public algorithm(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;
    .locals 10

    new-instance v9, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->algorithm:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509CertificateThumbprint:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509Certificate:Ljava/lang/String;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyID:Ljava/lang/String;

    iget-object v6, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyUse:Ljava/lang/String;

    iget-object v7, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->encryptionAlgorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->context:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public context(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->context:Ljava/lang/String;

    return-object p0
.end method

.method public encryptionAlgorithm(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->encryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyID:Ljava/lang/String;

    return-object p0
.end method

.method public keyUse(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyUse:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JweResponse.JweHeader.JweHeaderBuilder(algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x509CertificateThumbprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509CertificateThumbprint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x509Certificate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509Certificate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->keyUse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encryptionAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->encryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->context:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public x509Certificate(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509Certificate:Ljava/lang/String;

    return-object p0
.end method

.method public x509CertificateThumbprint(Ljava/lang/String;)Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;->x509CertificateThumbprint:Ljava/lang/String;

    return-object p0
.end method
