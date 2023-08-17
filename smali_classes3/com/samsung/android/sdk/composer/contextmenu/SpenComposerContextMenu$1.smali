.class Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;
.super Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->setListerManager(Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;->this$0:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;->this$0:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->access$000(Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;)Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;->this$0:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->access$000(Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;)Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;->this$0:Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->access$000(Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;)Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method
