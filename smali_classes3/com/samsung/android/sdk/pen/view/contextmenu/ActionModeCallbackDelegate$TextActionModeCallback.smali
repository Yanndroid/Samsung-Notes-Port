.class Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field public mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->this$0:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate$TextActionModeCallback;->mDelegate:Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeCallbackDelegate;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
