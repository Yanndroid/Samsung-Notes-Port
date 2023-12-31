.class public final Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/sdk/iris/SIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCrypto:Ljava/lang/Object;

.field private final mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method public constructor <init>(Ljava/security/Signature;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public static synthetic access$700(Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method private setFidoResultData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoResultData:[B

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFidoRequestData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public getFidoResultData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/sdk/iris/SIrisManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljava/security/Signature;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/security/Signature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
