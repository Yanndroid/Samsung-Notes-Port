.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/widget/PickerTabView$TabViewContract;->onTabSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
