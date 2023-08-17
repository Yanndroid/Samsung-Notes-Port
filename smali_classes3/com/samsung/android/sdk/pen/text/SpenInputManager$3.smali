.class Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/text/SpenSuggestionPopup$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/text/SpenInputManager;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClicked(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    const-string v1, ""

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;IILjava/lang/String;)V

    return-void
.end method

.method public onItemClicked(Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0, p3, p4, p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$1000(Lcom/samsung/android/sdk/pen/text/SpenInputManager;IILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$900(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestions()Ljava/util/ArrayList;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenSuggestionSpan;->getSuggestionType()I

    move-result p4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/text/SpenInputManager$3;->this$0:Lcom/samsung/android/sdk/pen/text/SpenInputManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/text/SpenInputManager;->access$500(Lcom/samsung/android/sdk/pen/text/SpenInputManager;)Landroid/text/Editable;

    move-result-object v0

    new-instance v1, Landroid/text/style/SuggestionSpan;

    invoke-direct {v1, p2, p3, p4}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result p1

    const/16 p3, 0x21

    invoke-interface {v0, v1, p2, p1, p3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-void
.end method
