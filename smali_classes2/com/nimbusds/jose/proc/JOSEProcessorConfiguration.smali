.class public interface abstract Lcom/nimbusds/jose/proc/JOSEProcessorConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;
.end method

.method public abstract getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract getJWETypeVerifier()Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract getJWSTypeVerifier()Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;
.end method

.method public abstract setJWEDecrypterFactory(Lcom/nimbusds/jose/proc/JWEDecrypterFactory;)V
.end method

.method public abstract setJWEKeySelector(Lcom/nimbusds/jose/proc/JWEKeySelector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setJWETypeVerifier(Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setJWSKeySelector(Lcom/nimbusds/jose/proc/JWSKeySelector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setJWSTypeVerifier(Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract setJWSVerifierFactory(Lcom/nimbusds/jose/proc/JWSVerifierFactory;)V
.end method
