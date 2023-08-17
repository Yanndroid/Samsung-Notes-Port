.class Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$4;->val$permissions:[Ljava/lang/String;

    const/16 v2, 0x66

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;IZ[Ljava/lang/String;)V

    return-void
.end method
