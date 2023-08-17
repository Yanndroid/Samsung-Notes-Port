.class Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->startCreateNoteActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/popupnote/PopupNoteService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    iput-object p2, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1    # Landroid/app/ActivityOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "PopupNoteService"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->val$intent:Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "posture_launched_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "startCreateNoteActivity : Folded @ Bottom Half"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/ScreenOnActivity;->getScreenOnNoteActivityOptions(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p1

    const-string v1, "startCreateNoteActivity : not Folded"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->collapsePanels(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    iget-object v1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    iget-object v0, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
