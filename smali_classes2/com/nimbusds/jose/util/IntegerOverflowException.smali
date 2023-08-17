.class public Lcom/nimbusds/jose/util/IntegerOverflowException;
.super Lcom/nimbusds/jose/JOSEException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Integer overflow"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    return-void
.end method
