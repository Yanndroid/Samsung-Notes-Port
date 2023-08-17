.class Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotesPickerActivity"

    const-string v1, "InitializeRunnable run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->i(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->h(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;)V

    :cond_0
    return-void
.end method
