.class public Landroidx/biometric/BiometricPrompt$CryptoObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0
    .param p1    # Ljava/security/Signature;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mSignature:Ljava/security/Signature;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mSignature:Ljava/security/Signature;

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1    # Ljavax/crypto/Mac;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mMac:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mSignature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$CryptoObject;->mSignature:Ljava/security/Signature;

    return-object v0
.end method
