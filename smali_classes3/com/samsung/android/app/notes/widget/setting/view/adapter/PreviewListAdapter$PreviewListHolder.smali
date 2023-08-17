.class Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewListHolder"
.end annotation


# instance fields
.field public mContent:Landroid/widget/TextView;

.field public mFavorite:Landroid/widget/ImageView;

.field public mThumbnail:Landroid/widget/ImageView;

.field public mTime:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;

.field public mVoice:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mThumbnail:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mContent:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mTime:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->favorite:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mFavorite:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/homewidget/R$id;->voice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/view/adapter/PreviewListAdapter$PreviewListHolder;->mVoice:Landroid/widget/ImageView;

    return-void
.end method
