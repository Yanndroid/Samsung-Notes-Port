.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->getCallable(Landroid/net/Uri;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

.field public final synthetic val$index:I

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download image# index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mimeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;I)V

    return-object v1

    :cond_1
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;I)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$InputValues;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadBitmap;->saveImageFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->val$index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;)I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddImage;I)V

    return-object v1
.end method
