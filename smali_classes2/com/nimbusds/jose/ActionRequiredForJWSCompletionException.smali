.class public Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;
.super Lcom/nimbusds/jose/JOSEException;
.source "SourceFile"


# instance fields
.field private final completableSigning:Lcom/nimbusds/jose/CompletableJWSObjectSigning;

.field private final option:Lcom/nimbusds/jose/JWSSignerOption;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nimbusds/jose/JWSSignerOption;Lcom/nimbusds/jose/CompletableJWSObjectSigning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->option:Lcom/nimbusds/jose/JWSSignerOption;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->completableSigning:Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The completable signing must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The triggering option must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCompletableJWSObjectSigning()Lcom/nimbusds/jose/CompletableJWSObjectSigning;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->completableSigning:Lcom/nimbusds/jose/CompletableJWSObjectSigning;

    return-object v0
.end method

.method public getTriggeringOption()Lcom/nimbusds/jose/JWSSignerOption;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/ActionRequiredForJWSCompletionException;->option:Lcom/nimbusds/jose/JWSSignerOption;

    return-object v0
.end method
