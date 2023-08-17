.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates$IContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager$IView;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelectedBodyText()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isSelectedBodyText()Z

    move-result v0

    return v0
.end method
