.class Lcom/samsung/android/app/notes/popupnote/PopupNoteService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->isAllowedStartCase(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/popupnote/PopupNoteService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$2;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$2;->this$0:Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_not_enough_space_in_device_storage_desc:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
