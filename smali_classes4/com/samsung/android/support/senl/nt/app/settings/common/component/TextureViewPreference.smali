.class public Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewPreference"


# instance fields
.field private mItemView:Landroid/view/View;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mTextureUri:Landroid/net/Uri;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mTextureUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->updateLayout(II)V

    return-void
.end method

.method private init()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_textureview_preference_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mTextureUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureViewPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateLayout(II)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLayout# width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureViewPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature;->getFeature()Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ModelFeature$Feature;->isFoldableModel()Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-double v0, v0

    const-wide v2, 0x3fe147ae147ae148L    # 0.54

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-int/2addr p2, v0

    div-int/2addr p2, p1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mItemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const-string v0, "TextureViewPreference"

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mItemView:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->settings_textureview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method
