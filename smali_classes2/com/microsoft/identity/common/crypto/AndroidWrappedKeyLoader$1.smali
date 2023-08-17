.class Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;
.super Lcom/microsoft/identity/common/java/util/CachedData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/util/CachedData<",
        "Ljavax/crypto/SecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;->this$0:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/util/CachedData;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;->getData()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;->this$0:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    invoke-static {v0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->access$000(Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/internal/util/AndroidKeyStoreUtil;->canLoadKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader$1;->this$0:Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;

    invoke-static {v0}, Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;->access$100(Lcom/microsoft/identity/common/crypto/AndroidWrappedKeyLoader;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/util/CachedData;->clear()V

    :cond_1
    invoke-super {p0}, Lcom/microsoft/identity/common/java/util/CachedData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method
