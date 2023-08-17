.class Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/view/ActionMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public hide(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method

.method public invalidateContentRect()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/contextmenu/ActionModeDelegate;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidateContentRect()V

    return-void
.end method
