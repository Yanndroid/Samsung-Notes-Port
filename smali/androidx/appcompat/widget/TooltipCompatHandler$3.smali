.class Landroidx/appcompat/widget/TooltipCompatHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/TooltipCompatHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/TooltipCompatHandler;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/TooltipCompatHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/TooltipCompatHandler$3;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$3;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->access$000(Landroidx/appcompat/widget/TooltipCompatHandler;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$3;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-static {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->access$000(Landroidx/appcompat/widget/TooltipCompatHandler;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TooltipCompatHandler"

    const-string v1, "isHovered is false. Hide!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/appcompat/widget/TooltipCompatHandler$3;->this$0:Landroidx/appcompat/widget/TooltipCompatHandler;

    invoke-virtual {v0}, Landroidx/appcompat/widget/TooltipCompatHandler;->hide()V

    :cond_0
    return-void
.end method
