.class public Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/platform/JweResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JweHeader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    }
.end annotation


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mContext:Ljava/lang/String;

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mKeyID:Ljava/lang/String;

.field private final mKeyUse:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mX509Certificate:Ljava/lang/String;

.field private final mX509CertificateThumbprint:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mX509CertificateThumbprint:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mX509Certificate:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mKeyID:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mKeyUse:Ljava/lang/String;

    iput-object p7, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mEncryptionAlgorithm:Ljava/lang/String;

    iput-object p8, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mContext:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader$JweHeaderBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getX509CertificateThumbprint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getX509CertificateThumbprint()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getX509Certificate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getX509Certificate()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getKeyID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getKeyID()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getKeyUse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getKeyUse()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getContext()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_11

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :goto_7
    return v2

    :cond_12
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mContext:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mKeyID:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mKeyUse:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getX509Certificate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mX509Certificate:Ljava/lang/String;

    return-object v0
.end method

.method public getX509CertificateThumbprint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->mX509CertificateThumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getType()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getX509CertificateThumbprint()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getX509Certificate()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getKeyID()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getKeyUse()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/platform/JweResponse$JweHeader;->getContext()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method
