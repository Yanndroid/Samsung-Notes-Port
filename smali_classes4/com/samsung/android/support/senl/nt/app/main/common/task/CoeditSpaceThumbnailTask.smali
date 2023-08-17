.class public Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_MEMBER:I = 0x4


# instance fields
.field private final initialIds:[I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private mMemberInitial:[Ljava/lang/String;

.field private final mMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final profileIds:[I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->first_profile:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->second_profile:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->third_profile:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$id;->forth_profile:I

    const/4 v6, 0x3

    aput v2, v1, v6

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->profileIds:[I

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->first_initial:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->second_initial:I

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->third_initial:I

    aput v1, v0, v5

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->forth_initial:I

    aput v1, v0, v6

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->initialIds:[I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMembers:Ljava/util/List;

    return-void
.end method

.method private getThumbnailLayoutResId(I)I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_thumbnail_four_profile:I

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_thumbnail_three_profile:I

    return p1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_thumbnail_two_profile:I

    return p1

    :cond_2
    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_thumbnail_one_profile:I

    return p1
.end method

.method private initMemberInitials(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMemberInitial:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMemberInitial:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->initialIds:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMemberInitial:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private loadThumbnailFromUri(Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;I)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CoeditUserThumbnailUtils;->loadThumbnailFromUri(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->setDefaultThumbnail(Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;I)V

    return-void
.end method

.method private setDefaultThumbnail(Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contacts/presetimage/PresetImageUtil;->getPresetImage(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMemberInitial:[Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, p2, p3

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/view/View;
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMembers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-le p1, v1, :cond_2

    move p1, v1

    :cond_2
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMemberInitial:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->getThumbnailLayoutResId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->profileIds:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mMembers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->loadThumbnailFromUri(Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->doInBackground([Ljava/lang/Void;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->initMemberInitials(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$drawable;->gcs_group_list_item_user_thumbnail_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->mThumbnailContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/CoeditSpaceThumbnailTask;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
