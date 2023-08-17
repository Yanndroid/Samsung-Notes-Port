.class Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;
.super Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoeditSpaceAddHolder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;Landroid/view/View;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;-><init>(Landroid/view/View;I)V

    const/16 p3, 0x101

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;->mHolderType:I

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$id;->space_item_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
