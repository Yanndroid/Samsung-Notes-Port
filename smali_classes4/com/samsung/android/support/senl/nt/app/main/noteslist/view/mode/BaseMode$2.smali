.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$2;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteExpiredNotes$PostRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->executeDeleteExpiredNotes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteExpiredNotes$PostRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;Z)V

    return-void
.end method
