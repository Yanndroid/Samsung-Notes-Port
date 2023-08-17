.class Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;
.super Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/composer/SpenComposerImpl;->init(Landroid/content/Context;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTTextListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$000(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$000(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->sendKeyEvent(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public onSoftInputAffected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$000(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$1;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$000(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->setShowSoftInputDisabled(Z)V

    :cond_0
    return-void
.end method
