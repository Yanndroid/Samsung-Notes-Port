.class Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable# width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TextureViewPreference"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->a(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;->b(Lcom/samsung/android/support/senl/nt/app/settings/common/component/TextureViewPreference;Landroid/media/MediaPlayer;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
