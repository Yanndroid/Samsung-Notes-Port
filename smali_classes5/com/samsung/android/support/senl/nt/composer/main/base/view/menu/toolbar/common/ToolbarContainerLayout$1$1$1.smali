.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->TAG:Ljava/lang/String;

    const-string v1, "IntroVI, end animation"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->access$200(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;

    const/high16 v1, -0x3d380000    # -100.0f

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/ToolbarContainerLayout;->savePosition(FF)V

    return-void
.end method
