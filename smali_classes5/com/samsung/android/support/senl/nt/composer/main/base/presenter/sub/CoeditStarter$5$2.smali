.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5$2;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$5;Ljava/lang/String;)V

    return-void
.end method
