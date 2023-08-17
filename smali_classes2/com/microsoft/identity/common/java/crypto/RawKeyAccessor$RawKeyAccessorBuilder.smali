.class public Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawKeyAccessorBuilder"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private key:[B

.field private suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;
    .locals 4

    new-instance v0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->key:[B

    iget-object v3, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->alias:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor;-><init>(Lcom/microsoft/identity/common/java/crypto/CryptoSuite;[BLjava/lang/String;)V

    return-object v0
.end method

.method public key([B)Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;
    .locals 1
    .param p1    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "key is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->key:[B

    return-object p0
.end method

.method public suite(Lcom/microsoft/identity/common/java/crypto/CryptoSuite;)Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/crypto/CryptoSuite;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "suite is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawKeyAccessor.RawKeyAccessorBuilder(suite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->suite:Lcom/microsoft/identity/common/java/crypto/CryptoSuite;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->key:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/RawKeyAccessor$RawKeyAccessorBuilder;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
