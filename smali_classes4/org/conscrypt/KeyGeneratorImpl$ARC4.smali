.class public final Lorg/conscrypt/KeyGeneratorImpl$ARC4;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ARC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ARC4"

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    return-void
.end method


# virtual methods
.method public checkKeySize(I)V
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    const/16 v0, 0x800

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Key size must be between 40 and 2048 bits"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
