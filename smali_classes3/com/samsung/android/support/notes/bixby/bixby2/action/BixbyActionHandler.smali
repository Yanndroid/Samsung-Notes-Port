.class public Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;
.super Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BixbyActionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    return-void
.end method

.method private getDefaultResponseCallback()Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$1;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;)V

    return-object v0
.end method


# virtual methods
.method public executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 2
    .param p4    # Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeAction() - context/actionName/params : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyActionHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler;->getDefaultResponseCallback()Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    move-result-object p4

    :cond_0
    new-instance v0, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;

    invoke-direct {v1, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyActionHandler$BixbyActionCallback;-><init>(Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;-><init>(Landroid/content/Context;Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResponseCallback;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "viv.samsungNotesApp.GetAppState"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "viv.samsungNotesApp.IsNoteEmpty"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "viv.samsungNotesApp.ShowRecentNotes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "viv.samsungNotesApp.SearchNote"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "viv.samsungNotesApp.Save"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "viv.samsungNotesApp.DeleteNote"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyGetAppStateAction;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyGetAppStateAction;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyGetAppStateAction;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    goto :goto_1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyIsNoteEmptyAction;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyIsNoteEmptyAction;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyIsNoteEmptyAction;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    goto :goto_1

    :pswitch_2
    new-instance p1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyShowRecentNotes;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyShowRecentNotes;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyShowRecentNotes;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    goto :goto_1

    :pswitch_3
    new-instance p1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySearchAction;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    goto :goto_1

    :pswitch_4
    new-instance p1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbySaveAction;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    goto :goto_1

    :pswitch_5
    new-instance p1, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;

    invoke-direct {p1, p3, p4}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;-><init>(Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/action/BixbyDeleteAction;->execute(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f349e44 -> :sswitch_5
        0x160c123c -> :sswitch_4
        0x1d44fb39 -> :sswitch_3
        0x5197e7ca -> :sswitch_2
        0x5b6378d2 -> :sswitch_1
        0x6d3ceec7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
