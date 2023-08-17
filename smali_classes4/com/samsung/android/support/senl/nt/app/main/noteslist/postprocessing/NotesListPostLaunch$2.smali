.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->reserveExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/NotesListPostLaunch;)Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeLogics(Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager$Token;)V

    return-void
.end method
