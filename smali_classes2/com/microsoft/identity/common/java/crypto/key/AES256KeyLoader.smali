.class public abstract Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;
.super Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;
.source "SourceFile"


# static fields
.field public static final AES_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final KEY_SIZE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "AES256KeyLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public getKeySpecAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "AES"

    return-object v0
.end method
