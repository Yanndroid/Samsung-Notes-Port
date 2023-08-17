.class Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;->shareSDocToComposer()Z
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/picker/NotePickerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
