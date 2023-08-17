.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/DummyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchImpl;
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/CoeditSpaceImpl;
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/GcsImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteStandaloneSpace(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getSearchSavedText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public handleMeetJoinAction()V
    .locals 0

    return-void
.end method

.method public launchSocialPickerForNewStandaloneNote(I)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onGroupInvitationReceived()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInvitationAccepted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInvitationDeclined(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSpaceLongPressed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateRecentSearchList()V
    .locals 0

    return-void
.end method
