.class public Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;
.super Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;
.source "SourceFile"


# instance fields
.field private mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;)Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    return-void
.end method

.method public setListerManager(Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;->mListenerManager:Lcom/samsung/android/sdk/composer/listener/SpenComposerListenerManager;

    new-instance p1, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu$1;-><init>(Lcom/samsung/android/sdk/composer/contextmenu/SpenComposerContextMenu;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenu;->setContextMenuListener(Lcom/samsung/android/sdk/pen/view/contextmenu/SpenContextMenuListener;)V

    return-void
.end method
