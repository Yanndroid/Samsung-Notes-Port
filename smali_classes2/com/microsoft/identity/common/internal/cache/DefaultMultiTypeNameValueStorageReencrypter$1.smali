.class Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;->reencryptAsync(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

.field public final synthetic val$decrypter:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;

.field public final synthetic val$encrypter:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;

.field public final synthetic val$fileManager:Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

.field public final synthetic val$params:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->this$0:Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$fileManager:Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$encrypter:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;

    iput-object p4, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$decrypter:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;

    iput-object p5, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$params:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;

    iput-object p6, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->this$0:Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$fileManager:Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

    iget-object v2, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$encrypter:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$decrypter:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;

    iget-object v4, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$params:Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter;->reencrypt(Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/internal/cache/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/cache/DefaultMultiTypeNameValueStorageReencrypter$1;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;

    invoke-interface {v1, v0}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
