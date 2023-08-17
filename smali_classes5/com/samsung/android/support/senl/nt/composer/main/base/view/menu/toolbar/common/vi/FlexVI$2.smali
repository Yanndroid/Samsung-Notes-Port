.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->movingUp()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

.field public final synthetic val$absolutePositionY:I

.field public final synthetic val$pointZeroThreePercentHeight:I

.field public final synthetic val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$pointZeroThreePercentHeight:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$absolutePositionY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$pointZeroThreePercentHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setBottomMargin(F)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movingUp pointZeroThreePercentHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$pointZeroThreePercentHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$targetView:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->val$absolutePositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/FlexVI$IContract;->updateDockerSize()V

    return-void
.end method
