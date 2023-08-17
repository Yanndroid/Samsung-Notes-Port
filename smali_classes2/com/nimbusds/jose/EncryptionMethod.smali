.class public final Lcom/nimbusds/jose/EncryptionMethod;
.super Lcom/nimbusds/jose/Algorithm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/EncryptionMethod$Family;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field public static final A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

.field public static final A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final cekBitLength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->REQUIRED:Lcom/nimbusds/jose/Requirement;

    const-string v2, "A128CBC-HS256"

    const/16 v3, 0x100

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v2, Lcom/nimbusds/jose/Requirement;->OPTIONAL:Lcom/nimbusds/jose/Requirement;

    const-string v4, "A192CBC-HS384"

    const/16 v5, 0x180

    invoke-direct {v0, v4, v2, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    const-string v4, "A256CBC-HS512"

    const/16 v5, 0x200

    invoke-direct {v0, v4, v1, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    const-string v1, "A128CBC+HS256"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    const-string v1, "A256CBC+HS512"

    invoke-direct {v0, v1, v2, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    sget-object v1, Lcom/nimbusds/jose/Requirement;->RECOMMENDED:Lcom/nimbusds/jose/Requirement;

    const-string v4, "A128GCM"

    const/16 v5, 0x80

    invoke-direct {v0, v4, v1, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    const-string v4, "A192GCM"

    const/16 v5, 0xc0

    invoke-direct {v0, v4, v2, v5}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    const-string v2, "A256GCM"

    invoke-direct {v0, v2, v1, v3}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    sput-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/Algorithm;-><init>(Ljava/lang/String;Lcom/nimbusds/jose/Requirement;)V

    iput p3, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/EncryptionMethod;
    .locals 2

    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256GCM:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A256CBC_HS512_DEPRECATED:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {v0}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cekBitLength()I
    .locals 1

    iget v0, p0, Lcom/nimbusds/jose/EncryptionMethod;->cekBitLength:I

    return v0
.end method
