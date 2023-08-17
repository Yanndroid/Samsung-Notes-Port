.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestName()Ljava/lang/String;
    .locals 1

    const-string v0, "COEDIT_ITEM_EVENT"

    return-object v0
.end method

.method public run(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->getEventData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;->getEventData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;->g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSpaceMode;->requestDownload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
