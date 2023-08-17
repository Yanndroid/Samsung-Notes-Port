.class public Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final HOLDER_TYPE_ADD:I = 0x101


# instance fields
.field private final mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

.field private final mSelectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->mSelectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;)Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->mSelectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;->getSpaceDisplayList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x101

    return p1

    :cond_0
    const/16 p1, 0x100

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->mCoeditSpaceMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/CoeditSpaceMap;->getSpaceDisplayData(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->decorate(Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/Common;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x101

    if-ne p2, v2, :cond_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_space_add_holder:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter$CoeditSpaceAddHolder;-><init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;Landroid/view/View;I)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_space_holder:I

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/CoeditSpaceAdapter;->mSelectListener:Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;

    invoke-direct {p2, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;-><init>(Landroid/view/View;ILcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/adapter/SpacePickerSelectListener;)V

    return-object p2
.end method
