.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->findHyperText(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

.field public final synthetic val$adjustIndex:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$spanList:Ljava/util/ArrayList;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$spanList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$text:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$adjustIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->call()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$spanList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$text:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$adjustIndex:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->parseHyperTextForCalculator(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findHyperText Throwable, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$3;->val$spanList:Ljava/util/ArrayList;

    return-object v0
.end method
