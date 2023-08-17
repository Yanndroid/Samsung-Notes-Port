.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->getIntroVI()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroVI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "IntroVI, cancel animation"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->cancelTranslationAnimation()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$701(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)V

    return-void
.end method

.method public doDockingByDirection(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$100(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;)V

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$400(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;Landroid/graphics/Point;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isReleased()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntroVI.IContract : isReleased - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$500(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$600(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)Z

    move-result v0

    return v0
.end method
