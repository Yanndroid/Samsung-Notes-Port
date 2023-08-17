.class Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->reencryptAsync(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;

.field public final synthetic val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;

.field public final synthetic val$decrypter:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;

.field public final synthetic val$encrypter:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;

.field public final synthetic val$fileManager:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

.field public final synthetic val$params:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->this$0:Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;

    iput-object p2, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;

    iput-object p3, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$fileManager:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    iput-object p4, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$encrypter:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;

    iput-object p5, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$decrypter:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;

    iput-object p6, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$params:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$callback:Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;

    iget-object v1, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->this$0:Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;

    iget-object v2, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$fileManager:Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;

    iget-object v3, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$encrypter:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;

    iget-object v4, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$decrypter:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;

    iget-object v5, p0, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter$3;->val$params:Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/microsoft/identity/common/migration/DefaultMultiTypeNameValueStorageReencrypter;->reencrypt(Lcom/microsoft/identity/common/java/interfaces/INameValueStorage;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringEncrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$IStringDecrypter;Lcom/microsoft/identity/common/migration/IMultiTypeNameValueStorageReencrypter$ReencryptionParams;)Lcom/microsoft/identity/common/migration/IMigrationOperationResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallback;->onTaskCompleted(Ljava/lang/Object;)V

    return-void
.end method
