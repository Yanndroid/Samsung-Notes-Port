.class public Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mKeyAcccesor:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->mKeyAcccesor:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "cipherText is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->mKeyAcccesor:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    sget-object v1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;->decrypt([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "plainText is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/microsoft/identity/common/java/crypto/KeyAccessorStringAdapter;->mKeyAcccesor:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    sget-object v1, Lcom/microsoft/identity/common/java/AuthenticationConstants;->ENCODING_UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;->encrypt([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
