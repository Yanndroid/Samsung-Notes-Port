.class Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/SeslContentViewInsetsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SeslCVInsetsCallback"

    const-string v1, "WindowInsetsAnimation could have been cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {v1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$000(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {v1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$100(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Start to restore insets state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$102(Landroidx/appcompat/view/SeslContentViewInsetsCallback;Z)Z

    iget-object v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$200(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$300(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$200(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback$1;->this$0:Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    invoke-static {v1}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;->access$300(Landroidx/appcompat/view/SeslContentViewInsetsCallback;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_1
    return-void
.end method
