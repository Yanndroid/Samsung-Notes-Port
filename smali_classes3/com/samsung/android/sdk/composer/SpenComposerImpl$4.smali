.class Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionPatternDetector$Listener;


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

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternMatched()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->Unsupported:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->isFbrDrawPadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->isFbrDrawPadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->On:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->Off:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    :cond_1
    :goto_0
    move-object v3, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1400(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->isPredictionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->On:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->Off:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    :goto_1
    move-object v4, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1500(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->On:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;->Off:Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;

    :goto_2
    move-object v5, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    new-instance v7, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->val$context:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4$1;-><init>(Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$WritingOptionState;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView$Listener;)V

    invoke-static {v0, v7}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1302(Lcom/samsung/android/sdk/composer/SpenComposerImpl;Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1300(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/SpenComposerImpl$4;->this$0:Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    invoke-static {v1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->access$1600(Lcom/samsung/android/sdk/composer/SpenComposerImpl;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenWritingOptionView;->setParent(Landroid/view/View;)V

    :cond_5
    return-void
.end method
