.class public Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;
.super Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;
.source "SourceFile"


# static fields
.field public static final USER_PROVIDED_KEY_IDENTIFIER:Ljava/lang/String; = "U001"


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/crypto/key/AES256KeyLoader;-><init>()V

    const-string v0, "alias is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawBytes is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;->mAlias:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/crypto/key/AbstractSecretKeyLoader;->generateKeyFromRawBytes([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;->mKey:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljavax/crypto/SecretKey;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/key/PredefinedKeyLoader;->mKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getKeyTypeIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "U001"

    return-object v0
.end method
