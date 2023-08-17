.class Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionModeCallbackDelegate"


# instance fields
.field public mCallbackV23:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;

.field public mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;

    new-instance p1, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;

    invoke-direct {p1, p0, p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;-><init>(Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mCallbackV23:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->mContextMenu:Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuInterface;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
