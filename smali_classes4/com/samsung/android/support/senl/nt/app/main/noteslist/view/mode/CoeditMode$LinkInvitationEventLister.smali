.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/caller/Listenable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkInvitationEventLister"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;

.field private final mGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;)V
    .locals 0
    .param p2    # Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;->mCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;

    return-void
.end method


# virtual methods
.method public requestName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COEDIT_LINK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/samsung/android/support/senl/nt/coedit/caller/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister;->mCallback:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/coedit/caller/Event;->getEventData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;->onDownloadFinished(Ljava/lang/String;)V

    return-void
.end method
