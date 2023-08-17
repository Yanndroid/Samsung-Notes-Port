.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/presenter/CoeditSpacePresenter$ViewContract$IRecyclerView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAdapter(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;->d(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/view/CoeditSpacePickerFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
