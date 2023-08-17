.class public Lcom/nimbusds/jose/jwk/JWKException;
.super Lcom/nimbusds/jose/KeyException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/KeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static expectedClass(Ljava/lang/Class;)Lcom/nimbusds/jose/jwk/JWKException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;)",
            "Lcom/nimbusds/jose/jwk/JWKException;"
        }
    .end annotation

    new-instance v0, Lcom/nimbusds/jose/jwk/JWKException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid JWK: Must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static expectedPrivate()Lcom/nimbusds/jose/jwk/JWKException;
    .locals 2

    new-instance v0, Lcom/nimbusds/jose/jwk/JWKException;

    const-string v1, "Expected private JWK but none available"

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/jwk/JWKException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
