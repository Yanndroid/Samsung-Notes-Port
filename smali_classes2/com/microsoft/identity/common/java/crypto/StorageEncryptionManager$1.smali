.class Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/crypto/IVGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mRandom:Ljava/security/SecureRandom;

.field public final synthetic this$0:Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;->this$0:Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;->mRandom:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generate()[B
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/microsoft/identity/common/java/crypto/StorageEncryptionManager$1;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method
