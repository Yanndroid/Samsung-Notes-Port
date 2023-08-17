.class Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;
.super Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl$1;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->access$000(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;)Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    :cond_0
    return-void
.end method
