.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;

.field public final synthetic val$this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder$1;->val$this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;)Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;->createNewSpace()V

    return-void
.end method
