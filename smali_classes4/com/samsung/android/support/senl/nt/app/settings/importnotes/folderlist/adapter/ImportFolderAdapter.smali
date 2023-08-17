.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$RunnableWithView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportFolderAdapter"


# instance fields
.field private final mContainerAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

.field private final mFileClickListener:Landroid/view/View$OnClickListener;

.field private final mFolderClickListener:Landroid/view/View$OnClickListener;

.field private final mItemAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mItemAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContainerAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mFileClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mFolderClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$5;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->toggleItemCheckState(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;)V

    return-void
.end method

.method private toggleItemCheckState(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    if-nez v0, :cond_0

    const-string p1, "ImportFolderAdapter"

    const-string v0, "toggleItemCheckState# mContract is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->getImportFolderInfo(I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getIsChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->setIsChecked(Z)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getIsChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->onItemChecked()V

    return-void
.end method

.method private updateContentDescription(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->getContainerContentDescription(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getType()I

    move-result p2

    invoke-interface {v0, v1, v2, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->getItemContainerContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->getItemCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;I)V
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImportFolderAdapter"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->getImportFolderInfo(I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getIsChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;->setRippleSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getType()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$drawable;->myfiles_list_folder:I

    invoke-static {v2, v5, v4}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mTime:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mFolderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$6;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$6;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/common/util/DrawableUtils;->setRippleSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContainerAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p2, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setNextFocusRightId(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getModifiedTime()J

    move-result-wide v5

    invoke-static {p2, v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "snb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "spd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->myfiles_list_etc:I

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->myfiles_list_spd:I

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$drawable;->myfiles_list_snb:I

    :goto_0
    invoke-static {p2, v2, v4}, Lcom/samsung/android/spr/drawable/Spr;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->updateContentDescription(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$layout;->file_picker_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mItemAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mFileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;)V
    .locals 4
    .param p1    # Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter;->mContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapterContract;->getImportFolderInfo(I)Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/model/ImportFolderInfo;->getIsChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method
