.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$9;->val$msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Ljava/lang/String;)V

    return-void
.end method
